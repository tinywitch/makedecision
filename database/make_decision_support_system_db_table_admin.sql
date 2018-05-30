
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ID` int(1) NOT NULL,
  `admin_name` varchar(10) NOT NULL,
  `admin_password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ID`, `admin_name`, `admin_password`) VALUES
(1, 'admin', 123456);
