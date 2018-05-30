
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc_tinh_bai_toan_2`
--

CREATE TABLE `thuoc_tinh_bai_toan_2` (
  `ID` int(11) NOT NULL,
  `Ten_Thuoc_Tinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thuoc_tinh_bai_toan_2`
--

INSERT INTO `thuoc_tinh_bai_toan_2` (`ID`, `Ten_Thuoc_Tinh`) VALUES
(1, 'Ranking của trường'),
(2, 'Số chỉ tiêu'),
(3, 'Điểm chuẩn'),
(4, 'Khả năng tìm việc'),
(5, 'Khoảng cách'),
(6, 'Học phí'),
(7, 'Môi trường học tập');
