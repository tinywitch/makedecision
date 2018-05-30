
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linh_vuc_dao_tao`
--

CREATE TABLE `linh_vuc_dao_tao` (
  `Linh_Vuc_Dao_Tao_ID` int(11) NOT NULL,
  `Ma_Linh_Vuc_Dao_Tao` int(11) NOT NULL,
  `Ten_Linh_Vuc_Dao_Tao` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `So_Chi_Tieu_Linh_Vuc_Dao_Tao` int(11) NOT NULL,
  `Khoi_Nganh_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `linh_vuc_dao_tao`
--

INSERT INTO `linh_vuc_dao_tao` (`Linh_Vuc_Dao_Tao_ID`, `Ma_Linh_Vuc_Dao_Tao`, `Ten_Linh_Vuc_Dao_Tao`, `So_Chi_Tieu_Linh_Vuc_Dao_Tao`, `Khoi_Nganh_ID`) VALUES
(1, 714, 'Khoa học giáo dục và đào tạo giáo viên', 0, 1),
(2, 721, 'Nghệ thuật', 0, 2),
(3, 722, 'Nhân văn', 0, 7),
(4, 731, 'Khoa học xã hội và hành vi', 0, 7),
(5, 732, 'Báo chí và thông tin', 0, 7),
(6, 734, 'Kinh doanh và quản lý', 0, 3),
(7, 742, 'Khoa học sự sống', 0, 4),
(8, 744, 'Khoa học tự nhiên', 0, 4),
(9, 746, 'Toán và thống kê', 0, 5),
(10, 748, 'Máy tính và công nghệ thông tin', 0, 5),
(11, 751, 'công nghệ kỹ thuật', 0, 5),
(12, 752, 'Kỹ thuật', 0, 5),
(13, 754, 'Sản xuất và chế biến', 0, 5),
(14, 758, 'Kiến trúc và xây dựng', 0, 5),
(15, 762, 'Nông, lâm nghiệp và thủy sản', 0, 5),
(16, 764, 'Thú y', 0, 5),
(17, 772, 'Sức khỏe', 0, 6),
(18, 776, 'Dịch vụ xã hội', 0, 7),
(19, 781, 'Du lịch, khách sạn, thể thao và dịch vụ cá nhân', 0, 7),
(20, 784, 'Dịch vụ vận tải', 0, 7),
(21, 785, 'Môi trường và bảo vệ môi trường', 0, 7),
(22, 786, 'An ninh, Quốc phòng', 0, 7);
