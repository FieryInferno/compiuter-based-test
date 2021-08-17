<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tes_rekap_hasil extends Member_Controller {
	private $kode_menu = 'tes-rekap';
	private $kelompok = 'tes';
	private $url = 'manager/tes_rekap_hasil';
	
    function __construct(){
		parent:: __construct();
		$this->load->model('cbt_user_model');
		$this->load->model('cbt_user_grup_model');
		$this->load->model('cbt_tes_model');
		$this->load->model('cbt_tes_token_model');
		$this->load->model('cbt_tes_topik_set_model');
		$this->load->model('cbt_tes_user_model');
		$this->load->model('cbt_tesgrup_model');
		$this->load->model('cbt_soal_model');
		$this->load->model('cbt_jawaban_model');
		$this->load->model('cbt_tes_soal_model');
		$this->load->model('cbt_tes_soal_jawaban_model');

        parent::cek_akses($this->kode_menu);
	}
	
    public function index(){
		$data['kode_menu'] = $this->kode_menu;
        $data['url'] = $this->url;

        $username = $this->access->get_username();
		$user_id = $this->users_model->get_login_info($username)->id;
		
		$tanggal_awal = date('Y-m-d', strtotime('- 1 days'));
        $tanggal_akhir = date('Y-m-d', strtotime('+ 1 days'));
        
        $data['rentang_waktu'] = $tanggal_awal.' - '.$tanggal_akhir;

        $query_group = $this->cbt_user_grup_model->get_group();
        $select = '';
        if($query_group->num_rows()>0){
        	$query_group = $query_group->result();
        	foreach ($query_group as $temp) {
        		$select = $select.'<option value="'.$temp->grup_id.'">'.$temp->grup_nama.'</option>';
        	}

        }else{
        	$select = '<option value="0">Tidak Ada Group</option>';
        }
        $data['select_group'] = $select;
        
        $this->template->display_admin($this->kelompok.'/tes_rekap_hasil_tes_view', 'Rekapitulasi Hasil Tes', $data);        
    }

    public function export(){
    	$this->load->library('form_validation');
        
        $this->form_validation->set_rules('pilih-grup', 'Grup','required|strip_tags');
        $this->form_validation->set_rules('nama-grup', 'Grup','required|strip_tags');
        $this->form_validation->set_rules('pilih-rentang-waktu', 'Rentang Waktu','required|strip_tags');

        $this->load->library('excel');
        $this->load->library('tools');
            
        $inputFileName = './public/form/form-data-rekap-hasil-tes.xlsx';
        $excel = PHPExcel_IOFactory::load($inputFileName);
        $worksheet = $excel->getSheet(0);
        
        if($this->form_validation->run() == TRUE){
            $rentang_waktu = $this->input->post('pilih-rentang-waktu', true);
            $tanggal = explode(" - ", $rentang_waktu);
            $grup = $this->input->post('pilih-grup', true);
            $nama_grup = $this->input->post('nama-grup', true);

            // Mengambil Data Peserta berdasarkan grup
            $query_user = $this->cbt_user_model->get_by_kolom('user_grup_id', $grup);
            // Mengambil data Tes dalam rentang. Data tes diambil dari data daftar Tes
            $query_tes = $this->cbt_tesgrup_model->get_by_tanggal_and_grup($tanggal[0], $tanggal[1], $grup);
            
            $worksheet->setCellValueByColumnAndRow(2, 3, $nama_grup);
            $worksheet->setCellValueByColumnAndRow(2, 4, $this->tools->indonesian_date($tanggal[0], 'j F Y', '').' - '.$this->tools->indonesian_date($tanggal[1], 'j F Y', ''));
            $worksheet->setCellValueByColumnAndRow(2, 5, $query_tes->num_rows());

            if($query_user->num_rows()>0 AND $query_tes->num_rows()>0){
            	$query_tes = $query_tes->result();
            	$query_user = $query_user->result();

            	$kolom = 4;
                foreach ($query_tes as $tes) {
                	$worksheet->setCellValueByColumnAndRow($kolom, 8, $tes->tes_nama);
                    $kolom++;
                }

            	$row = 9;
            	foreach ($query_user as $user) {
            		$worksheet->setCellValueByColumnAndRow(0, $row, ($row-8));
                    $worksheet->setCellValueByColumnAndRow(1, $row, $user->user_firstname);
                    $worksheet->setCellValueByColumnAndRow(2, $row, $nama_grup);

                    $kolom = 4;
	                foreach ($query_tes as $tes) {
	                	// Mendapatkan nilai tiap Tes untuk setiap siswa
	                	$query_nilai = $this->cbt_tes_user_model->get_nilai_by_tes_user($tes->tes_id, $user->user_id);
	                	if($query_nilai->num_rows()>0){
	                		$query_nilai = $query_nilai->row();
	                		$worksheet->setCellValueByColumnAndRow(3, $row, $query_nilai->nilai);
							
							$nama_tes = $tes->tes_nama;
							$point_user = $query_nilai->nilai;
							$tes_listening=strpos($nama_tes,"Listening");
							$tes_structure=strpos($nama_tes,"Structure");
							$tes_reading=strpos($nama_tes,"Reading");
									
							$nilai_user = array(50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0);
							$skor_listening= array(68,67,66,65,63,62,61,60,59,58,57,57,56,55,54,54,53,52,52,51,51,50,49,49,48,48,47,47,46,45,45,44,43,42,41,41,39,38,37,35,33,32,32,31,30,29,28,27,26,25,24);
							$skor_structure= array(0,0,0,0,0,0,0,0,0,0,68,67,65,63,61,60,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,43,41,40,40,38,37,36,35,33,31,29,27,26,25,23,22,21,20,20);
							$skor_reading= array(67,66,65,63,61,60,59,58,57,56,55,54,54,53,52,52,51,50,49,48,48,47,46,46,45,44,43,43,42,41,40,39,38,37,36,35,34,32,31,30,29,28,28,27,26,25,24,24,23,22,21);
							
							for($i=0; $i < count($nilai_user); $i++){
								if ($tes_listening !== FALSE){
									  if ($point_user == $nilai_user[$i])
									  {$skor=$skor_listening[$i];}
								}
								else if ($tes_structure !== FALSE){
									  if ($point_user == $nilai_user[$i])
									  {$skor=$skor_structure[$i];}
								}
								else if ($tes_reading !== FALSE){
									  if ($point_user == $nilai_user[$i])
									  {$skor=$skor_reading[$i];}
								}
							}
							
							
							$worksheet->setCellValueByColumnAndRow(4, $row, $skor);
	                	}else{
	                		$worksheet->setCellValueByColumnAndRow($kolom, $row, 'N/A');
	                	}

	                    $kolom++;
	                }

                    $row++;
            	}
            }
        }

        $filename = 'Data Rekap Hasil Tes - '.date('Y-m-d H:i').'.xlsx'; //save our workbook as this file name
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'); //mime type
        header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
        header('Cache-Control: max-age=0'); //no cache
                 
        //save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
        //if you want to save it as .XLSX Excel 2007 format
        $objWriter = PHPExcel_IOFactory::createWriter($excel, 'Excel2007');
        //force user to download the Excel file without writing it to server's HD
        $objWriter->save('php://output');
    }
}