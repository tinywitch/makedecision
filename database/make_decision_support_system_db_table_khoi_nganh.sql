
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoi_nganh`
--

CREATE TABLE `khoi_nganh` (
  `Khoi_Nganh_ID` int(11) NOT NULL,
  `Ten_Khoi_Nganh` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `So_Chi_Tieu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `khoi_nganh`
--

INSERT INTO `khoi_nganh` (`Khoi_Nganh_ID`, `Ten_Khoi_Nganh`, `So_Chi_Tieu`) VALUES
(1, 'Khối ngành I', 0),
(2, 'Khối ngành II', 0),
(3, 'Khối ngành III', 0),
(4, 'Khối ngành IV', 0),
(5, 'Khối ngành V', 0),
(6, 'Khối ngành VI', 0),
(7, 'Khối ngành VII', 0);
