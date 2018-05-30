<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$db = "make_decision_support_system_db";

$connect = mysqli_connect($dbhost, $dbuser, $dbpass, $db) or die("Không thể kết nối với cơ sở dữ liệu");
mysqli_set_charset($connect, "utf8");

function tinh_trong_so(){
	$attribute_bt1_ID = "SELECT ID FROM thuoc_tinh_bai_toan_1";
	$attribute_bt1_ID_result = mysqli_query($GLOBALS['connect'], $attribute_bt1_ID);

	if (!$attribute_bt1_ID_result) {
		# code...
		die('404 ERR0R...');
	}

	while ($attribute_bt1_ID_row = mysqli_fetch_assoc($attribute_bt1_ID_result)) {
		# code...
		$select_attribute_name[] = "attribute_" . $attribute_bt1_ID_row["ID"];
	}

	foreach ($select_attribute_name as $select_attribute_name_key => $select_attribute_name_value){
    	$attribute_weight_bt1 = $_POST["" . $select_attribute_name_value];
    	$attribute_weight_bt1_sql = "SELECT ID FROM trong_so WHERE Trong_So_Bien_Ngon_Ngu='$attribute_weight_bt1'";
    	$attribute_weight_bt1_result = mysqli_query($GLOBALS['connect'], $attribute_weight_bt1_sql);
    	if (!$attribute_weight_bt1_result) {
    		# code...
    		die('404 ERR0R...');
    	}
    	while ($attribute_weight_bt1_row = mysqli_fetch_assoc($attribute_weight_bt1_result)) {
    		# code...
    		$attribute_weight_bt1_ID[] = $attribute_weight_bt1_row["ID"];
    	}
	}

	$base_sum = array_sum($attribute_weight_bt1_ID);

	$weight_base_1 = 1 / $base_sum;
	$weight_base_1_format = number_format($weight_base_1, 4, '.', ' ');

	$attribute_count = count($attribute_weight_bt1_ID) - 1;

	for ($i = 0; $i < $attribute_count; $i++) {
		$GLOBALS['bt1_weight_attribute['. $i . ']'] = $weight_base_1_format * $attribute_weight_bt1_ID[$i];
	}

	$weight_1_sum = 0;
	for ($i = 0; $i < $attribute_count; $i++) {
		$weight_1_sum += $GLOBALS['bt1_weight_attribute['. $i . ']']; 
	}
	$GLOBALS['bt1_weight_attribute['. $attribute_count . ']'] = 1 - $weight_1_sum;
	// GIÁ TRỊ TRỌNG SỐ CHO CÁC THUỘC TÍNH LƯU VÀO MẢNG $bt1_weight_attribute

	$GLOBALS['bt1_weight_attribute_length'] = $attribute_count + 1;
}

function tinh_muc_do_yeu_thich_khoi_nganh(){
	$khoi_nganh_ID = "SELECT Khoi_Nganh_ID FROM khoi_nganh";
	$khoi_nganh_ID_result = mysqli_query($GLOBALS['connect'], $khoi_nganh_ID);

	if (!$khoi_nganh_ID_result) {
		# code...
		die('404 ERR0R...');
	}

	while ($khoi_nganh_ID_row = mysqli_fetch_assoc($khoi_nganh_ID_result)) {
		# code...
		$select_khoi_nganh_name[] = "khoi_nganh_" . $khoi_nganh_ID_row["Khoi_Nganh_ID"];
	}

	foreach ($select_khoi_nganh_name as $select_khoi_nganh_name_key => $select_khoi_nganh_name_value){
    	$attribute_khoi_nganh = $_POST["" . $select_khoi_nganh_name_value];
    	$attribute_khoi_nganh_sql = "SELECT * FROM fuzzy_set WHERE Bien_Ngon_Ngu='$attribute_khoi_nganh'";
    	$attribute_khoi_nganh_sql_result = mysqli_query($GLOBALS['connect'], $attribute_khoi_nganh_sql);
    	if (!$attribute_khoi_nganh_sql_result) {
    		# code...
    		die('404 ERR0R...');
    	}
    	while ($fuzzy_set_khoi_nganh_row = mysqli_fetch_assoc($attribute_khoi_nganh_sql_result)) {
    		# code...
    		$fuzzy_set_a1[] = $fuzzy_set_khoi_nganh_row["a1"];
    		$fuzzy_set_b1[] = $fuzzy_set_khoi_nganh_row["b1"];
    		$fuzzy_set_c1[] = $fuzzy_set_khoi_nganh_row["c1"];
    		$fuzzy_set_d1[] = $fuzzy_set_khoi_nganh_row["d1"];
    		$fuzzy_set_h11[] = $fuzzy_set_khoi_nganh_row["h11"];
    		$fuzzy_set_h12[] = $fuzzy_set_khoi_nganh_row["h12"];
    		$fuzzy_set_a2[] = $fuzzy_set_khoi_nganh_row["a2"];
    		$fuzzy_set_b2[] = $fuzzy_set_khoi_nganh_row["b2"];
    		$fuzzy_set_c2[] = $fuzzy_set_khoi_nganh_row["c2"];
    		$fuzzy_set_d2[] = $fuzzy_set_khoi_nganh_row["d2"];
    		$fuzzy_set_h21[] = $fuzzy_set_khoi_nganh_row["h21"];
    		$fuzzy_set_h22[] = $fuzzy_set_khoi_nganh_row["h22"];
    	}
	}

	$GLOBALS['fuzzy_set_mount'] = count($fuzzy_set_a1);
	$n = 2;
	$he_so_lech = $n / (2 * $n +1);

	for($i = 0; $i < $GLOBALS['fuzzy_set_mount']; $i++) {
		$tich_hop_trung_binh_can_duoi[$i] = 	($fuzzy_set_a1[$i] + $fuzzy_set_d1[$i]) / 2 +
												$he_so_lech * ($fuzzy_set_b1[$i] - $fuzzy_set_a1[$i] - $fuzzy_set_d1[$i] + $fuzzy_set_c1[$i]);

		$tich_hop_trung_binh_can_tren[$i] = 	($fuzzy_set_a2[$i] + $fuzzy_set_d2[$i]) / 2 +
												$he_so_lech * ($fuzzy_set_b2[$i] - $fuzzy_set_a2[$i] - $fuzzy_set_d2[$i] + $fuzzy_set_c2[$i]);

		$GLOBALS['tich_hop_trung_binh['.$i.']'] = ($tich_hop_trung_binh_can_tren[$i] + $tich_hop_trung_binh_can_duoi[$i]) / 2;
		// GIÁ TRỊ TKHỬ MỜ CHO THUỘC TÍNH MỨC ĐỘ YÊU THÍCH LƯU VÀO MẢNG $tich_hop_trung_binh
	}
}

function tinh_nang_luc_ban_than_theo_khoi_nganh(){
	//cần biết được khối ngành này có những khối thi nào
	//lấy kết quả thi dự kiến cao nhất làm năng lực bản thân cho khối ngành.
	$diem_tong_ket = array("Toán Học" => $_POST['toan_hoc'], 
							"Ngữ Văn" => $_POST['ngu_van'], 
							"Sinh Học" => $_POST['sinh_hoc'],
							"Vật Lí" => $_POST['vat_li'],
							"Hóa Học" => $_POST['hoa_hoc'],
							"Lịch Sử" => $_POST['lich_su'],
							"Địa Lý" => $_POST['dia_ly'],
							"Ngoại Ngữ" => $_POST['ngoai_ngu'],
							"Giáo Dục Công Dân" => $_POST['giao_duc_cong_dan'],
							"Giáo Dục Quốc Phòng" => $_POST['giao_duc_quoc_phong'],
							"Thể Dục" => $_POST['the_duc'],
							"Công Nghệ" => $_POST['cong_nghe'],
							"Tin Học" => $_POST['tin_hoc'],
							"Môn Tự Chọn" => $_POST['mon_tu_chon'],
							"Điểm Ưu Tiên" => $_POST['diem_uu_tien']
						);
	foreach ($diem_tong_ket as $key => $value) {
		# code...
		echo $key . " : " . $value;
		echo '<br>';
	}
}

function so_chi_tieu_theo_khoi_nganh(){
	//xác định các ngành có trong bảng tuyển sinh, mỗi ngành chỉ lấy 1 lần
	$ten_nganh_sql = "SELECT Ten_Nganh FROM tuyen_sinh";
	mysqli_set_charset($GLOBALS['connect'], "utf8");
	$ten_nganh_sql_result = mysqli_query($GLOBALS['connect'], $ten_nganh_sql);
	$ten_nganh_sql_result_count = mysqli_num_rows($ten_nganh_sql_result);

	if ($ten_nganh_sql_result_count == 0) {
		echo 'Không có ngành nào được tìm thấy';
	} 
	else{
		while ($ten_nganh_sql_result_row = mysqli_fetch_assoc($ten_nganh_sql_result)) {
			$ten_nganh[] = $ten_nganh_sql_result_row['Ten_Nganh'];
		}

		$ten_nganh_unique = array_unique($ten_nganh);
		$so_nganh = count($ten_nganh_unique);
		echo ($so_nganh);
		echo '<br>';
		foreach ($ten_nganh_unique as $key => $value) {
			# code...
			$nganh[] = $value;
		}//NGÀNH LƯU VÀO MẢNG $nganh để có các chỉ số index liên tục
		print_r($nganh);
		echo '<br><br><br><br><br>';
	}

	//tính tổng số chỉ tiêu của từng ngành
	for ($i = 0; $i < $so_nganh; $i++){
		$chi_tieu_nganh[$i] = 0;
		$chi_tieu_nganh_sql ="SELECT So_Chi_Tieu FROM tuyen_sinh WHERE Ten_Nganh='$nganh[$i]'";
		mysqli_set_charset($GLOBALS['connect'], "utf8");
		$chi_tieu_nganh_sql_result = mysqli_query($GLOBALS['connect'], $chi_tieu_nganh_sql);

		while ($chi_tieu_nganh_sql_result_row = mysqli_fetch_assoc($chi_tieu_nganh_sql_result)) {
			$chi_tieu_nganh[$i] += $chi_tieu_nganh_sql_result_row['So_Chi_Tieu'];
		}
	}

	foreach ($chi_tieu_nganh as $key1 => $value1) {
		# code...
		echo $nganh[$key1] . " có " . $value1 . " chỉ tiêu";
		echo '<br>';
	}

	//xác định các nhóm ngành có tuyển sinh, mỗi nhóm ngành chỉ lấy 1 lần
	for ($i=0; $i<$so_nganh; $i++){
		$id_nhom_nganh_sql = "SELECT Nhom_Nganh_ID FROM nganh WHERE Ten_Nganh='$nganh[$i]'";
		mysqli_set_charset($GLOBALS['connect'], "utf8");
		$id_nhom_nganh_sql_result = mysqli_query($GLOBALS['connect'], $id_nhom_nganh_sql);

		while ($id_nhom_nganh_sql_result_row = mysqli_fetch_assoc($id_nhom_nganh_sql_result)) {
			# code...
			$id_nhom_nganh_list[] = $id_nhom_nganh_sql_result_row['Nhom_Nganh_ID'];
		}
	}

	$id_nhom_nganh_unique = array_unique($id_nhom_nganh_list);
	$so_id_nhom_nganh = count($id_nhom_nganh_unique);
	echo ($so_id_nhom_nganh);
		echo '<br>';
		foreach ($id_nhom_nganh_unique as $key2 => $value2) {
			# code...
			$id_nhom_nganh[] = $value2;
		}//ID NHÓM NGÀNH LƯU VÀO MẢNG $id_nhom_nganh để có các chỉ số index liên tục
		print_r($id_nhom_nganh);
		echo '<br><br><br><br><br>';

	//Tính tổng số chỉ tiêu của nhóm ngành, mà nhóm ngành này có chứa ngành ở bảng tuyen_sinh
	for($i=0; $i<$so_id_nhom_nganh; $i++){
		$chi_tieu_nhom_nganh[$i] = 0;
		$chi_tieu_nhom_nganh_sql = "SELECT Ten_Nganh FROM nganh WHERE Nhom_Nganh_ID='$id_nhom_nganh[$i]'";
		mysqli_set_charset($GLOBALS['connect'], "utf8");
		$chi_tieu_nhom_nganh_sql_result = mysqli_query($GLOBALS['connect'], $chi_tieu_nhom_nganh_sql);

		while ($chi_tieu_nhom_nganh_sql_result_row = mysqli_fetch_assoc($chi_tieu_nhom_nganh_sql_result)) {
			# code...
			$ten_nganh_trong_bang_nganh =  $chi_tieu_nhom_nganh_sql_result_row['Ten_Nganh'];

			//$chi_tieu_nhom_nganh[$i] += ;
		}
	}

	foreach ($chi_tieu_nhom_nganh as $key3 => $value3) {
		# code...
		echo $id_nhom_nganh[$key3] . " có " . $value3 . " chỉ tiêu";
		echo '<br>';
	}
}

function goi_y_chon_khoi_nganh(){
	tinh_trong_so();
	for($i = 0; $i < $GLOBALS['bt1_weight_attribute_length']; $i++){
		echo ($GLOBALS['bt1_weight_attribute[' . $i . ']']);
		echo '<br>';
	}

	tinh_muc_do_yeu_thich_khoi_nganh();
	for($i = 0; $i < $GLOBALS['fuzzy_set_mount'] - 1; $i++){
		echo ($GLOBALS['tich_hop_trung_binh['.$i.']']);
		echo '<br>';
	}

	tinh_nang_luc_ban_than_theo_khoi_nganh();
	so_chi_tieu_theo_khoi_nganh();

	//TOPSIS
}

if (!empty($_POST['suggest1_1_submit'])) {
	goi_y_chon_khoi_nganh();
}

mysqli_close($connect);
?>