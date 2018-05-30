
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc_tinh_bai_toan_1`
--

CREATE TABLE `thuoc_tinh_bai_toan_1` (
  `ID` int(5) NOT NULL,
  `Ten_Thuoc_Tinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thuoc_tinh_bai_toan_1`
--

INSERT INTO `thuoc_tinh_bai_toan_1` (`ID`, `Ten_Thuoc_Tinh`) VALUES
(1, 'Năng lực bản thân'),
(2, 'Mức độ yêu thích'),
(3, 'Số chỉ tiêu');
