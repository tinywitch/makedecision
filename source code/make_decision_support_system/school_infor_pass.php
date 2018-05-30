<?php
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$db = "make_decision_support_system_db";
	// $db_table = "to_chuc_dao_tao";

	$connect = mysqli_connect($dbhost, $dbuser, $dbpass, $db) or die("Không thể kết nối đến cơ sở dữ liệu!");
	mysqli_set_charset($connect, "utf8");

	$school_infor = "SELECT * FROM to_chuc_dao_tao";
	$data = mysqli_query($connect, $school_infor);

	while ($row = mysqli_fetch_assoc($data)) {
		# code...
		echo "<table>";
			echo "<tr>";
				echo "<td>";
					echo "<a href='".$row["Website"]."' target='_blank'><img src='".$row["Logo"]."' alt='school logo' width='100px'></a>";
				echo "</td>";
				echo "<td>";
					echo "<ul>";
						echo "<li><b>Tên trường:</b> " . $row["Ten_To_Chuc_Dao_Tao"] ."</li>";
						echo "<li><b>Mã trường:</b> " . $row["Ma_To_Chuc_Dao_Tao"] . "</li>";
						echo "<li><b>Trang chủ:</b> <a href='" . $row["Website"] . "' target='_blank'>" . $row["Website"] . "</a></li>";
						echo "<li><b>Thông tin tuyển sinh:</b> <a href='" . $row["Thong_Tin_Tuyen_Sinh"] . "' target='_blank'>" . $row["Thong_Tin_Tuyen_Sinh"] . "</a></li>";
					echo "</ul>";
				echo "</td>";
			echo "</tr>";
		echo "</table>";
		echo "<br><br>";
	}

	mysqli_close($connect);
?>