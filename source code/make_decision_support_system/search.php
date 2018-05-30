<!DOCTYPE html>
<html>
<head>
	<title>Hỗ Trợ Tuyển Sinh | Thông tin truyển sinh</title>
	<?php
		include("meta.php");
	?>
</head>
<body>
	<div id="header">
		<h3><a href="index.php">HoTroTuyenSinh.com</a></h3>
	</div>

	<div id="navbar">
		<?php
			include("navigation_bar.php");
		?>
	</div>

	<?php
		include("sideright.php");
	?>

	<div class="main">
		<form action="search.php" method="POST" name="search_form" onsubmit="return(search_validate())">
			<input type="text" name="school_infor" placeholder="Nhập tên trường, mã trường">
			<input type="submit" name="search_button" value="Tìm kiếm">
		</form>
	</div>

	<div class="main">
		<?php
			$dbhost = "localhost";
			$dbuser = "root";
			$dbpass = "";
			$db = "make_decision_support_system_db";
			// $db_table = "to_chuc_dao_tao";

			$connect = mysqli_connect($dbhost, $dbuser, $dbpass, $db) or die("Không thể kết nối đến cơ sở dữ liệu!");
			mysqli_set_charset($connect, "utf8");

			$input = $_POST['school_infor'];

			$sql = "SELECT * FROM to_chuc_dao_tao WHERE Ma_To_Chuc_Dao_Tao='$input' OR Ten_To_Chuc_Dao_Tao='$input'";
			mysqli_set_charset($connect, "utf8");

			$result = mysqli_query($connect, $sql);
			$count = mysqli_num_rows($result);

			if (mysqli_num_rows($result) == 0) {
				# code...
				echo 'Không có kết quả tìm kiếm!';
			} 
			else{
				while ($row = mysqli_fetch_assoc($result)) {
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
				}
			}

			mysqli_close($connect);
		?>
	</div>

	<div id="footer">
		<?php
			include("footer.php");
		?>
	</div>
</body>
</html>