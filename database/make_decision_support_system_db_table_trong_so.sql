
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trong_so`
--

CREATE TABLE `trong_so` (
  `ID` int(2) NOT NULL,
  `Trong_So_Bien_Ngon_Ngu` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `trong_so`
--

INSERT INTO `trong_so` (`ID`, `Trong_So_Bien_Ngon_Ngu`) VALUES
(1, 'khong_anh_huong'),
(2, 'anh_huong_it'),
(3, 'anh_huong_kha_lon'),
(4, 'anh_huong_rat_lon');
