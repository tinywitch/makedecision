<?php

	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$db = "make_decision_support_system_db";

	$connect = mysqli_connect($dbhost, $dbuser, $dbpass, $db) or die("Không thể kết nối với cơ sở dữ liệu");
	mysqli_set_charset($connect, "utf8");

// TÍNH TRỌNG SỐ
	$attribute_bt2_ID = "SELECT ID FROM thuoc_tinh_bai_toan_2";
	$attribute_bt2_ID_result = mysqli_query($GLOBALS['connect'], $attribute_bt2_ID);

	if (!$attribute_bt2_ID_result) {
		# code...
		die('404 ERR0R...');
	}

	while ($attribute_bt2_ID_row = mysqli_fetch_assoc($attribute_bt2_ID_result)) {
		# code...
		$select_attribute_name[] = "attribute_" . $attribute_bt2_ID_row["ID"];
	}

	foreach ($select_attribute_name as $select_attribute_name_key => $select_attribute_name_value){
    	$attribute_weight_bt2 = $_POST["" . $select_attribute_name_value];
    	$attribute_weight_bt2_sql = "SELECT ID FROM trong_so WHERE Trong_So_Bien_Ngon_Ngu='$attribute_weight_bt2'";
    	$attribute_weight_bt2_result = mysqli_query($GLOBALS['connect'], $attribute_weight_bt2_sql);
    	if (!$attribute_weight_bt2_result) {
    		# code...
    		die('404 ERR0R...');
    	}
    	while ($attribute_weight_bt2_row = mysqli_fetch_assoc($attribute_weight_bt2_result)) {
    		# code...
    		$attribute_weight_bt2_ID[] = $attribute_weight_bt2_row["ID"];
    	}
	}

	$base_sum = array_sum($attribute_weight_bt2_ID);

	$weight_base_2 = 1 / $base_sum;
	$weight_base_2_format = number_format($weight_base_2, 4, '.', ' ');

	$attribute_count = count($attribute_weight_bt2_ID) - 1;

	for ($i = 0; $i < $attribute_count; $i++) {
		$bt2_weight_attribute[$i] = $weight_base_2_format * $attribute_weight_bt2_ID[$i];
	}

	$weight_2_sum = 0;
	for ($i = 0; $i < $attribute_count; $i++) {
		$weight_2_sum += $bt2_weight_attribute[$i]; 
	}
	$bt2_weight_attribute[$attribute_count] = 1 - $weight_2_sum;
	// GIÁ TRỊ TRỌNG SỐ CHO CÁC THUỘC TÍNH LƯU VÀO MẢNG $bt2_weight_attribute
	foreach ($bt2_weight_attribute as $key => $value) {
		# code...
		echo ($value);
		echo '<br>';
	}

// XEM NGÀNH, NHÓM NGÀNH THÍ SINH CUNG CẤP CÓ TRONG CƠ SỞ DỮ LIỆU HAY KHÔNG
	if (isset($_POST['ma_nganh_da_chon'])) 
	$ma_nganh_da_chon = $_POST["ma_nganh_da_chon"];
	echo ($ma_nganh_da_chon);
	$to_chuc_dao_tao_sql = "SELECT * FROM `tuyen_sinh` WHERE Ma_To_Chuc_Dao_Tao ='$ma_nganh_da_chon'";
	$to_chuc_dao_tao_sql_result = mysqli_query($connect, $to_chuc_dao_tao_sql);

	if (!$to_chuc_dao_tao_sql_result) {
		# code...
		echo "Rất xin lỗi không tìm thấy mã ngành này...";
	}
	else {
		while ($to_chuc_dao_tao_sql_result_row = mysqli_fetch_assoc($to_chuc_dao_tao_sql_result)) {
			# code...
			$ma_to_chuc_dao_tao[] = $to_chuc_dao_tao_sql_result_row['Ma_To_Chuc_Dao_Tao']
		}
	}

mysqli_close($connect);
?>