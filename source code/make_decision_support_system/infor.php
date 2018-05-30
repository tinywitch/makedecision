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
		<form 	action="search.php" 
				method="POST" 
				name="search_form" 
				onsubmit="return(search_validate())">
			<input type="text" name="school_infor" placeholder="Nhập tên trường, mã trường">
			<input type="submit" name="search_button" value="Tìm kiếm">
		</form>
	</div>

	<div class="main">
		<?php
			include("school_infor_pass.php");
		?>
	</div>

	<div id="footer">
		<?php
			include("footer.php");
		?>
	</div>
</body>
</html>