
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuyen_sinh`
--

CREATE TABLE `tuyen_sinh` (
  `Tuyen_Sinh_ID` int(11) NOT NULL,
  `Ma_To_Chuc_Dao_Tao` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Ten_Nganh` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Ma_Khoi_Thi` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `So_Chi_Tieu` int(11) NOT NULL,
  `Ma_Nganh_TCDT` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Diem_Nguong` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tuyen_sinh`
--

INSERT INTO `tuyen_sinh` (`Tuyen_Sinh_ID`, `Ma_To_Chuc_Dao_Tao`, `Ten_Nganh`, `Ma_Khoi_Thi`, `So_Chi_Tieu`, `Ma_Nganh_TCDT`, `Diem_Nguong`) VALUES
(1, 'BKA', 'Kỹ thuật cơ điện tử', 'A00', 160, 'ME1', 27),
(2, 'BKA', 'Kỹ thuật cơ điện tử', 'A01', 160, 'ME1', 27),
(3, 'BKA', 'Kỹ thuật Cơ khí', 'A00', 250, 'ME2', 25.75),
(4, 'BKA', 'Kỹ thuật Cơ khí', 'A01', 250, 'ME2', 25.75),
(5, 'BKA', 'Chương trình tiên tiến Cơ điện tử', 'A00', 40, 'ME-E1', 25.5),
(6, 'BKA', 'Chương trình tiên tiến Cơ điện tử', 'A01', 40, 'ME-E1', 25.5),
(7, 'BKA', 'Kỹ thuật Ô tô', 'A00', 110, 'TE1', 25.75),
(8, 'BKA', 'Kỹ thuật Ô tô', 'A01', 110, 'TE1', 25.75),
(9, 'BKA', 'Kỹ thuật Cơ khi Động lực', 'A00', 25, 'TE2', 25.75),
(10, 'BKA', 'Kỹ thuật Cơ khi Động lực', 'A01', 25, 'TE2', 25.75),
(11, 'BKA', 'Kỹ thuật Hàng không', 'A00', 20, 'TE3', 25.75),
(12, 'BKA', 'Kỹ thuật Hàng không', 'A01', 20, 'TE3', 25.75),
(13, 'BKA', 'Kỹ thuật Tàu thủy', 'A00', 20, 'TE4', 25.75),
(14, 'BKA', 'Kỹ thuật Tàu thủy', 'A01', 20, 'TE4', 25.75),
(15, 'BKA', 'Chương trình tiên tiến Kỹ thuật Ô tô', 'A00', 15, 'TE-E2', 0),
(16, 'BKA', 'Chương trình tiên tiến Kỹ thuật Ô tô', 'A01', 15, 'TE-E2', 0),
(17, 'BKA', 'Kỹ thuật Nhiệt', 'A00', 125, 'HE1', 24.75),
(18, 'BKA', 'Kỹ thuật Nhiệt', 'A01', 125, 'HE1', 24.75),
(19, 'BKA', 'Kỹ thuật Vật liệu', 'A00', 110, 'MS1', 23.75),
(20, 'BKA', 'Kỹ thuật Vật liệu', 'A01', 110, 'MS1', 23.75),
(21, 'BKA', 'Chương trình Tiên tiến Khoa học Kỹ thuật Vật liệu', 'A00', 15, 'MS-E3', 23.37),
(22, 'BKA', 'Chương trình Tiên tiến Khoa học Kỹ thuật Vật liệu', 'A01', 15, 'MS-E3', 23.37),
(23, 'BKA', 'Kỹ thuật Điện tử Viễn thông', 'A00', 270, 'ET1', 26.25),
(24, 'BKA', 'Kỹ thuật Điện tử Viễn thông', 'A01', 270, 'ET1', 26.25),
(25, 'BKA', 'Chương trình Tiên tiến Điện tử Viễn thông', 'A00', 20, 'ET-E4', 25.5),
(26, 'BKA', 'Chương trình Tiên tiến Điện tử Viễn thông', 'A01', 20, 'ET-E4', 25.5),
(27, 'BKA', 'Chương trình Tiên tiến Kỹ thuật Y sinh', 'A00', 20, 'ET-E5', 25.25),
(28, 'BKA', 'Chương trình Tiên tiến Kỹ thuật Y sinh', 'A01', 20, 'ET-E5', 25.25),
(29, 'BKA', 'Khoa học Máy tính', 'A00', 100, 'IT1', 28.25),
(30, 'BKA', 'Khoa học Máy tính', 'A01', 100, 'IT1', 28.25),
(31, 'BKA', 'Kỹ thuật Máy tính', 'A00', 80, 'IT2', 28.25),
(32, 'BKA', 'Kỹ thuật Máy tính', 'A01', 80, 'IT2', 28.25),
(33, 'BKA', 'Công nghệ Thông tin', 'A00', 800, 'IT3', 28.25),
(34, 'BKA', 'Công nghệ Thông tin', 'A01', 800, 'IT3', 28.25),
(35, 'BKA', 'Công nghệ Thông tin Việt -Nhật', 'A00', 100, 'IT-E6', 26.75),
(36, 'BKA', 'Công nghệ Thông tin Việt -Nhật', 'A01', 100, 'IT-E6', 26.75),
(37, 'BKA', 'Công nghệ Thồng tin ICT', 'A00', 40, 'IT-E7', 26.75),
(38, 'BKA', 'Công nghệ Thồng tin ICT', 'A01', 40, 'IT-E7', 26.75),
(39, 'BKA', 'Toán Tin', 'A00', 50, 'MI1', 25.75),
(40, 'BKA', 'Toán Tin', 'A01', 50, 'MI1', 25.75),
(41, 'BKA', 'Hệ thống Thông tin Quản lý', 'A00', 30, 'MI2', 25.75),
(42, 'BKA', 'Hệ thống Thông tin Quản lý', 'A01', 30, 'MI2', 25.75),
(43, 'BKA', 'Kỹ thuật Điện', 'A00', 110, 'EE1', 27.25),
(44, 'BKA', 'Kỹ thuật Điện', 'A01', 110, 'EE1', 27.25),
(45, 'BKA', 'Kỹ thuật Điều khiển - Tự động hóa', 'A00', 250, 'EE2', 27.25),
(46, 'BKA', 'Kỹ thuật Điều khiển - Tự động hóa', 'A01', 250, 'EE2', 27.25),
(47, 'BKA', 'Chương trình Tiên tiến Điều khiển Tự động hóa và Hệ thống điện', 'A00', 40, 'EE-E8', 26.25),
(48, 'BKA', 'Chương trình Tiên tiến Điều khiển Tự động hóa và Hệ thống điện', 'A01', 40, 'EE-E8', 26.25),
(49, 'BKA', 'Kỹ thuật Hóa học', 'A00', 160, 'CH1', 25),
(50, 'BKA', 'Kỹ thuật Hóa học', 'B00', 160, 'CH1', 25),
(51, 'BKA', 'Kỹ thuật Hóa học', 'D07', 160, 'CH1', 25),
(52, 'BKA', 'Hóa học', 'A00', 27, 'CH2', 25),
(53, 'BKA', 'Hóa học', 'B00', 26, 'CH2', 25),
(54, 'BKA', 'Hóa học', 'D07', 26, 'CH2', 25),
(55, 'BKA', 'Kỹ thuật in', 'A00', 14, 'CH3', 21.25),
(56, 'BKA', 'Kỹ thuật in', 'B00', 13, 'CH3', 21.25),
(57, 'BKA', 'Kỹ thuật in', 'D07', 13, 'CH3', 21.25),
(58, 'BKA', 'Kỹ thuật Sinh học', 'A00', 27, 'BF1', 25),
(59, 'BKA', 'Kỹ thuật Sinh học', 'B00', 27, 'BF1', 25),
(60, 'BKA', 'Kỹ thuật Sinh học', 'D07', 26, 'BF1', 25),
(61, 'BKA', 'Kỹ thuật Thực phẩm', 'A00', 67, 'BF2', 25),
(62, 'BKA', 'Kỹ thuật Thực phẩm', 'B00', 67, 'BF2', 25),
(63, 'BKA', 'Kỹ thuật Thực phẩm', 'D07', 66, 'BF2', 25),
(64, 'BKA', 'Kỹ thuật Môi trường', 'A00', 40, 'EV1', 25),
(65, 'BKA', 'Kỹ thuật Môi trường', 'B00', 40, 'EV1', 25),
(66, 'BKA', 'Kỹ thuật Môi trường', 'D07', 40, 'EV1', 25),
(67, 'BKA', 'Kỹ thuật Dệt', 'A00', 55, 'TX1', 24.5),
(68, 'BKA', 'Kỹ thuật Dệt', 'A01', 55, 'TX1', 24.5),
(69, 'BKA', 'Công nghệ May', 'A00', 45, 'TX2', 24.5),
(70, 'BKA', 'Công nghệ May', 'A01', 45, 'TX2', 24.5),
(71, 'BKA', 'Sư phạm Kỹ thuật Công nghiệp', 'A00', 20, 'ED1', 22.5),
(72, 'BKA', 'Sư phạm Kỹ thuật Công nghiệp', 'A01', 20, 'ED1', 22.5),
(73, 'BKA', 'Vật lý Kỹ thuật', 'A00', 75, 'PH1', 23.25),
(74, 'BKA', 'Vật lý Kỹ thuật', 'A01', 75, 'PH1', 23.25),
(75, 'BKA', 'Kỹ thuật Hạt nhân', 'A00', 15, 'NE1', 23.25),
(76, 'BKA', 'Kỹ thuật Hạt nhân', 'A01', 15, 'NE1', 23.25),
(77, 'BKA', 'Kinh tế Công nghiệp', 'A00', 17, 'EM1', 23),
(78, 'BKA', 'Kinh tế Công nghiệp', 'A01', 17, 'EM1', 23),
(79, 'BKA', 'Kinh tế Công nghiệp', 'D01', 16, 'EM1', 23),
(80, 'BKA', 'Quản lý Công nghiệp', 'A00', 30, 'EM2', 23),
(81, 'BKA', 'Quản lý Công nghiệp', 'A01', 30, 'EM2', 23),
(82, 'BKA', 'Quản lý Công nghiệp', 'D01', 30, 'EM2', 23),
(83, 'BKA', 'Quản trị kinh doanh', 'A00', 27, 'EM3', 24.25),
(84, 'BKA', 'Quản trị kinh doanh', 'A01', 27, 'EM3', 24.25),
(85, 'BKA', 'Quản trị kinh doanh', 'D01', 26, 'EM3', 24.25),
(86, 'BKA', 'Kế toán', 'A00', 20, 'EM4', 23.75),
(87, 'BKA', 'Kế toán', 'A01', 20, 'EM4', 23.75),
(88, 'BKA', 'Kế toán', 'D01', 20, 'EM4', 23.75),
(89, 'BKA', 'Tài chính Ngân hàng', 'A00', 14, 'EM5', 23.75),
(90, 'BKA', 'Tài chính Ngân hàng', 'A01', 13, 'EM5', 23.75),
(91, 'BKA', 'Tài chính Ngân hàng', 'D01', 13, 'EM5', 23.75),
(92, 'BKA', 'Tiếng Anh Khoa học Kỹ thuật và Công nghệ', 'D01', 140, 'FL1', 24.5),
(93, 'BKA', 'Tiếng Anh chuyên nghiệp Quốc tế', 'D01', 60, 'FL2', 24.5),
(94, 'BKA', 'Cơ điện tử', 'A00', 34, 'ME-NUT', 23.25),
(95, 'BKA', 'Cơ điện tử', 'A01', 33, 'ME-NUT', 23.25),
(96, 'BKA', 'Cơ điện tử', 'D07', 33, 'ME-NUT', 23.25),
(97, 'BKA', 'Cơ khí Chế tạo máy', 'A00', 10, 'ME-GU', 0),
(98, 'BKA', 'Cơ khí Chế tạo máy', 'A01', 10, 'ME-GU', 0),
(99, 'BKA', 'Cơ khí Chế tạo máy', 'D07', 10, 'ME-GU', 0),
(100, 'BKA', 'Điện tử Viễn thông', 'A00', 14, 'ET-LUH', 22),
(101, 'BKA', 'Điện tử Viễn thông', 'A01', 13, 'ET-LUH', 22),
(102, 'BKA', 'Điện tử Viễn thông', 'D07', 13, 'ET-LUH', 22),
(103, 'BKA', 'Công nghệ thông tin', 'A00', 24, 'IT-LTU', 23.5),
(104, 'BKA', 'Công nghệ thông tin', 'A01', 23, 'IT-LTU', 23.5),
(105, 'BKA', 'Công nghệ thông tin', 'D07', 23, 'IT-LTU', 23.5),
(106, 'BKA', 'Công nghệ thông tin', 'A00', 20, 'IT-VUW', 22),
(107, 'BKA', 'Công nghệ thông tin', 'A01', 20, 'IT-VUW', 22),
(108, 'BKA', 'Công nghệ thông tin', 'D07', 20, 'IT-VUW', 22),
(109, 'BKA', 'Hệ thống thông tin', 'A00', 10, 'IT-GINP', 20),
(110, 'BKA', 'Hệ thống thông tin', 'A01', 10, 'IT-GINP', 20),
(111, 'BKA', 'Hệ thống thông tin', 'D07', 10, 'IT-GINP', 20),
(112, 'BKA', 'Hệ thống thông tin', 'D29', 10, 'IT-GINP', 20),
(113, 'BKA', 'Quản trị kinh doanh', 'A00', 13, 'EM-VUW', 21.25),
(114, 'BKA', 'Quản trị kinh doanh', 'D07', 13, 'EM-VUW', 21.25),
(115, 'BKA', 'Quản trị kinh doanh', 'A01', 12, 'EM-VUW', 21.25),
(116, 'BKA', 'Quản trị kinh doanh', 'D01', 12, 'EM-VUW', 21.25),
(117, 'BKA', 'Quản lý công nghiệp Logistics và quản lý chuỗi cung ứng', 'A00', 10, 'EM-NU', 20),
(118, 'BKA', 'Quản lý công nghiệp Logistics và quản lý chuỗi cung ứng', 'D07', 10, 'EM-NU', 20),
(119, 'BKA', 'Quản lý công nghiệp Logistics và quản lý chuỗi cung ứng', 'A01', 10, 'EM-NU', 20),
(120, 'BKA', 'Quản lý công nghiệp Logistics và quản lý chuỗi cung ứng', 'D01', 10, 'EM-NU', 20),
(121, 'BKA', 'Quản trị kinh doanh', 'A00', 10, 'TROY-BA', 21),
(122, 'BKA', 'Quản trị kinh doanh', 'D07', 10, 'TROY-BA', 21),
(123, 'BKA', 'Quản trị kinh doanh', 'A01', 10, 'TROY-BA', 21),
(124, 'BKA', 'Quản trị kinh doanh', 'D01', 10, 'TROY-BA', 21),
(125, 'BKA', 'Khoa học máy tính', 'A00', 10, 'TROY-IT', 21.25),
(126, 'BKA', 'Khoa học máy tính', 'D07', 10, 'TROY-IT', 21.25),
(127, 'BKA', 'Khoa học máy tính', 'A01', 10, 'TROY-IT', 21.25),
(128, 'BKA', 'Khoa học máy tính', 'D01', 10, 'TROY-IT', 21.25),
(135, 'SPH', 'Sư phạm Toán học', 'A00', 120, '7140209A', 26),
(136, 'SPH', 'Sư phạm Toán học (dạy Toán bằng tiếng Anh)', 'A00', 10, '7140209B', 26),
(137, 'SPH', 'Sư phạm Toán học (dạy Toán bằng tiếng Anh)', 'A01', 9, '7140209C', 27.75),
(138, 'SPH', 'Sư phạm Toán học (dạy Toán bằng tiếng Anh)', 'D01', 6, '7140209D', 27),
(139, 'SPH', 'Sư phạm Tin học', 'A00', 30, '7140210A', 19),
(140, 'SPH', 'Sư phạm Tin học', 'A01', 5, '7140210B', 17.75),
(141, 'SPH', 'Sư phạm Tin học(dạy Tin bằng tiếng Anh)', 'A00', 13, '7140210C', 23.5),
(142, 'SPH', 'Sư phạm Tin học(dạy Tin bằng tiếng Anh)', 'A01', 12, '7140210D', 20),
(143, 'SPH', 'Sư phạm Vật lí', 'A00', 55, '7140211A', 23),
(144, 'SPH', 'Sư phạm Vật lí', 'A01', 15, '7140211B', 22.75),
(145, 'SPH', 'Sư phạm Vật lí', 'C01', 10, '7140211C', 22.75),
(146, 'SPH', 'Sư phạm Vật Lí (dạy Lý bằng tiếng Anh)', 'A00', 5, '7140211D', 22.5),
(147, 'SPH', 'Sư phạm Vật Lí (dạy Lý bằng tiếng Anh)', 'A01', 15, '7140211E', 22.75),
(148, 'SPH', 'Sư phạm Vật Lí (dạy Lý bằng tiếng Anh)', 'C01', 5, '7140211G', 19),
(149, 'SPH', 'Sư phạm Hóa học', 'A00', 80, '7140212A', 23.75),
(150, 'SPH', 'Sư phạm Hóa học (dạy Hóa bằng tiếng Anh)', 'D07', 25, '7140212B', 21),
(151, 'SPH', 'Sư phạm Sinh học', 'A00', 10, '7140213A', 19.5),
(152, 'SPH', 'Sư phạm Sinh học', 'B00', 45, '7140213B', 22),
(153, 'SPH', 'Sư phạm Sinh học', 'B03', 5, '7140213C', 0),
(154, 'SPH', 'Sư phạm Sinh học (dạy Sinh bằng tiếng Anh)', 'D01', 3, '7140213D', 0),
(155, 'SPH', 'Sư phạm Sinh học (dạy Sinh bằng tiếng Anh)', 'D08', 18, '7140213F', 19.5),
(156, 'SPH', 'Sư phạm Sinh học (dạy Sinh bằng tiếng Anh)', 'D07', 4, '7140213E', 18),
(157, 'SPH', 'Sư phạm Công nghệ', 'A00', 50, '7140246A', 0),
(158, 'SPH', 'Sư phạm Công nghệ', 'A01', 50, '7140246B', 0),
(159, 'SPH', 'Sư phạm Công nghệ', 'C01', 50, '7140246C', 0),
(160, 'SPH', 'Sư phạm Ngữ Văn', 'C00', 90, '7140217C', 27),
(161, 'SPH', 'Sư phạm Ngữ Văn', 'D01', 19, '7140217D', 23.5),
(162, 'SPH', 'Sư phạm Ngữ Văn', 'D02', 18, '7140217D', 23.5),
(163, 'SPH', 'Sư phạm Ngữ Văn', 'D03', 18, '7140217D', 23.5),
(164, 'SPH', 'Sư phạm Lịch sử', 'C00', 65, '7140218C', 25.5),
(165, 'SPH', 'Sư phạm Lịch sử', 'D14', 2, '7140218D', 22),
(166, 'SPH', 'Sư phạm Lịch sử', 'D62', 2, '7140218D', 22),
(167, 'SPH', 'Sư phạm Lịch sử', 'D64', 1, '7140218D', 22),
(168, 'SPH', 'Sư phạm Địa lý', 'A00', 15, '7140219A', 18),
(169, 'SPH', 'Sư phạm Địa lý', 'C04', 15, '7140219B', 22.5),
(170, 'SPH', 'Sư phạm Địa lý', 'C00', 50, '7140219C', 25.5),
(171, 'SPH', 'Sư phạm Giáo dục công dân', 'C14', 20, '7140204A', 23.5),
(172, 'SPH', 'Sư phạm Giáo dục công dân', 'D66', 9, '7140204B', 21.25),
(173, 'SPH', 'Sư phạm Giáo dục công dân', 'D68', 8, '7140204B', 21.25),
(174, 'SPH', 'Sư phạm Giáo dục công dân', 'D70', 8, '7140204B', 21.25),
(175, 'SPH', 'Sư phạm Giáo dục công dân', 'D01', 12, '7140204D', 17),
(176, 'SPH', 'Sư phạm Giáo dục công dân', 'D02', 12, '7140204D', 17),
(177, 'SPH', 'Sư phạm Giáo dục công dân', 'D03', 11, '7140204D', 17),
(178, 'SPH', 'Sư phạm Giáo dục Chính trị', 'C14', 15, '7140205A', 21),
(179, 'SPH', 'Sư phạm Giáo dục Chính trị', 'D66', 7, '7140205B', 18.75),
(180, 'SPH', 'Sư phạm Giáo dục Chính trị', 'D68', 7, '7140205B', 18.75),
(181, 'SPH', 'Sư phạm Giáo dục Chính trị', 'D70', 6, '7140205B', 18.75),
(182, 'SPH', 'Sư phạm Giáo dục Chính trị', 'D01', 7, '7140205D', 17.5),
(183, 'SPH', 'Sư phạm Giáo dục Chính trị', 'D02', 7, '7140205D', 17.5),
(184, 'SPH', 'Sư phạm Giáo dục Chính trị', 'D03', 6, '7140205D', 17.5),
(185, 'SPH', 'Sư phạm tiếng Anh', 'D01', 60, '7140231', 25.75),
(186, 'SPH', 'Sư phạm tiếng Pháp', 'D01', 9, '7140233D', 19.5),
(187, 'SPH', 'Sư phạm tiếng Pháp', 'D02', 9, '7140233D', 19.5),
(188, 'SPH', 'Sư phạm tiếng Pháp', 'D03', 8, '7140233D', 19.5),
(189, 'SPH', 'Sư phạm tiếng Pháp', 'D15', 2, '7140233C', 21.5),
(190, 'SPH', 'Sư phạm tiếng Pháp', 'D42', 1, '7140233C', 21.5),
(191, 'SPH', 'Sư phạm tiếng Pháp', 'D44', 1, '7140233C', 21.5),
(192, 'SPH', 'Sư phạm Âm nhạc', 'N02', 25, '7140222', 17.5),
(193, 'SPH', 'Sư phạm Mỹ thuật', 'H07', 25, '7140222', 19),
(194, 'SPH', 'Giáo dục thể chất', '', 25, '7140206', 16),
(195, 'SPH', 'Giáo dục mầm non', 'M00', 40, '7140201A', 22.25),
(196, 'SPH', 'Giáo dục mầm non sư phạm tiếng Anh', 'M01', 15, '7140201B', 20.5),
(197, 'SPH', 'Giáo dục mầm non sư phạm tiếng Anh', 'M02', 15, '7140201B', 22),
(198, 'SPH', 'Giáo dục Tiểu học', 'D01', 12, '7140202A', 25.25),
(199, 'SPH', 'Giáo dục Tiểu học', 'D02', 12, '7140202A', 25.25),
(200, 'SPH', 'Giáo dục Tiểu học', 'D03', 12, '7140202A', 25.25),
(201, 'SPH', 'Giáo dục Tiểu học', 'D11', 2, '7140202B', 20.5),
(202, 'SPH', 'Giáo dục Tiểu học', 'D52', 2, '7140202B', 20.5),
(203, 'SPH', 'Giáo dục Tiểu học', 'D54', 1, '7140202B', 20.5),
(204, 'SPH', 'Giáo dục Tiểu học Sư phạm Tiếng Anh', 'D01', 25, '7140202D', 24.75),
(205, 'SPH', 'Giáo dục Tiểu học Sư phạm Tiếng Anh', 'D11', 5, '7140202C', 20.5),
(206, 'SPH', 'Giáo dục đặc biệt', 'B03', 10, '714203B', 19.25),
(207, 'SPH', 'Giáo dục đặc biệt', 'C00', 17, '714203C', 26.755),
(208, 'SPH', 'Giáo dục đặc biệt', 'D01', 3, '714203D', 23),
(209, 'SPH', 'Giáo dục đặc biệt', 'D02', 3, '714203D', 23),
(210, 'SPH', 'Giáo dục đặc biệt', 'D03', 2, '714203D', 23),
(211, 'SPH', 'Quản lý giáo dục', 'A00', 10, '7140114A', 20.25),
(212, 'SPH', 'Quản lý giáo dục', 'C00', 15, '7140114C', 23.75),
(213, 'SPH', 'Quản lý giáo dục', 'D01', 4, '7140114D', 20.5),
(214, 'SPH', 'Quản lý giáo dục', 'D02', 3, '7140114D', 20.5),
(215, 'SPH', 'Quản lý giáo dục', 'D03', 3, '7140114D', 20.5),
(216, 'SPH', 'Hóa học', 'A00', 100, '7440112', 23.75),
(217, 'SPH', 'Sinh học', 'A00', 15, '7420101A', 19),
(218, 'SPH', 'Sinh học', 'B00', 70, '7420101B', 19),
(219, 'SPH', 'Sinh học', 'C04', 15, '7420101C', 0),
(220, 'SPH', 'Toán học', 'A00', 50, '7460101B', 19.5),
(221, 'SPH', 'Toán học', 'A01', 20, '7460101C', 19.5),
(222, 'SPH', 'Toán học', 'D01', 30, '7460101D', 17.75),
(223, 'SPH', 'Công nghệ thông tin', 'A00', 90, '7480201A', 17.25),
(224, 'SPH', 'Công nghệ thông tin', 'A01', 90, '7480201B', 18),
(225, 'SPH', 'Việt Nam học', 'C04', 15, '7310630B', 18.5),
(226, 'SPH', 'Việt Nam học', 'C04', 45, '7310630C', 21.25),
(227, 'SPH', 'Việt Nam học', 'D01', 20, '7310630D', 17.25),
(228, 'SPH', 'Việt Nam học', 'D02', 20, '7310630D', 17.25),
(229, 'SPH', 'Việt Nam học', 'D03', 20, '7310630D', 17.25),
(230, 'SPH', 'Văn học', 'C00', 60, '7229030C', 24.25),
(231, 'SPH', 'Văn học', 'D01', 14, '7229030D', 20.25),
(232, 'SPH', 'Văn học', 'D02', 13, '7229030D', 20.25),
(233, 'SPH', 'Văn học', 'D03', 13, '7229030D', 20.25),
(234, 'SPH', 'Ngôn ngữ Anh', 'D01', 100, '7220201D', 23.25),
(235, 'SPH', 'Triết học', 'C03', 35, '7229001B', 20.5),
(236, 'SPH', 'Triết học', 'C00', 45, '7229001C', 19),
(237, 'SPH', 'Triết học', 'D01', 7, '7229001D', 18.5),
(238, 'SPH', 'Triết học', 'D02', 7, '7229001D', 18.5),
(239, 'SPH', 'Triết học', 'D03', 6, '7229001D', 18.5),
(240, 'SPH', 'Chính trị học', 'C14', 30, '7310201A', 17.25),
(241, 'SPH', 'Chính trị học', 'D84', 10, '7310201B', 21.75),
(242, 'SPH', 'Chính trị học', 'D86', 10, '7310201B', 21.75),
(243, 'SPH', 'Chính trị học', 'D87', 10, '7310201B', 21.75),
(244, 'SPH', 'Chính trị học', 'D01', 14, '7310201D', 18.25),
(245, 'SPH', 'Chính trị học', 'D02', 13, '7310201D', 18.25),
(246, 'SPH', 'Chính trị học', 'D03', 13, '7310201D', 18.25),
(247, 'SPH', 'Tâm lý học', 'C03', 20, '7310401A', 19.25),
(248, 'SPH', 'Tâm lý học', 'C00', 70, '7310401C', 21.75),
(249, 'SPH', 'Tâm lý học', 'D01', 10, '7310401D', 20.25),
(250, 'SPH', 'Tâm lý học', 'D02', 10, '7310401D', 20.25),
(251, 'SPH', 'Tâm lý học', 'D03', 10, '7310401D', 20.25),
(252, 'SPH', 'Tâm lý giáo dục', 'C03', 10, '7310403A', 17.5),
(253, 'SPH', 'Tâm lý giáo dục', 'C00', 20, '7310403C', 24.5),
(254, 'SPH', 'Tâm lý giáo dục', 'D01', 4, '7310403D', 22.75),
(255, 'SPH', 'Tâm lý giáo dục', 'D02', 4, '7310403D', 22.75),
(256, 'SPH', 'Tâm lý giáo dục', 'D03', 4, '7310403D', 22.75),
(257, 'SPH', 'Công tác xã hội', 'D14', 7, '7760101B', 17.25),
(258, 'SPH', 'Công tác xã hội', 'D62', 6, '7760101B', 17.25),
(259, 'SPH', 'Công tác xã hội', 'D64', 6, '7760101B', 17.25),
(260, 'SPH', 'Công tác xã hội', 'C00', 30, '7760101C', 19),
(261, 'SPH', 'Công tác xã hội', 'D01', 24, '7760101D', 17),
(262, 'SPH', 'Công tác xã hội', 'D02', 24, '7760101D', 17),
(263, 'SPH', 'Công tác xã hội', 'D03', 24, '7760101D', 17),
(264, 'TCT', 'Giáo dục tiểu học', 'A00', 9, '7140202', 22),
(265, 'TCT', 'Giáo dục tiểu học', 'D01', 9, '7140202', 22),
(266, 'TCT', 'Giáo dục tiểu học', 'C01', 9, '7140202', 22),
(267, 'TCT', 'Giáo dục tiểu học', 'D03', 8, '7140202', 22),
(268, 'TCT', 'Giáo dục Công dân', 'C00', 5, '7140204', 22.75),
(269, 'TCT', 'Giáo dục Công dân', 'D14', 5, '7140204', 22.75),
(270, 'TCT', 'Giáo dục Công dân', 'D15', 5, '7140204', 22.75),
(271, 'TCT', 'Giáo dục Công dân', 'C19', 5, '7140204', 22.75),
(272, 'TCT', 'Giáo dục Thể chất', 'T00', 10, '7140206', 17.75),
(273, 'TCT', 'Giáo dục Thể chất', 'T01', 10, '7140206', 17.75),
(274, 'TCT', 'Sư phạm Toán học', 'A00', 5, '7140209', 23.5),
(275, 'TCT', 'Sư phạm Toán học', 'A01', 5, '7140209', 23.5),
(276, 'TCT', 'Sư phạm Toán học', 'D07', 5, '7140209', 23.5),
(277, 'TCT', 'Sư phạm Toán học', 'D08', 5, '7140209', 23.5),
(278, 'TCT', 'Sư phạm Tin học', 'A00', 7, '7140210', 16.5),
(279, 'TCT', 'Sư phạm Tin học', 'A01', 6, '7140210', 16.5),
(280, 'TCT', 'Sư phạm Tin học', 'A02', 6, '7140210', 16.5),
(281, 'TCT', 'Sư phạm Tin học', 'D29', 6, '7140210', 16.5),
(282, 'TCT', 'Sư phạm Vật lí', 'A00', 5, '7140211', 21.75),
(283, 'TCT', 'Sư phạm Vật lí', 'A01', 5, '7140211', 21.75),
(284, 'TCT', 'Sư phạm Vật lí', 'A02', 5, '7140211', 21.75),
(285, 'TCT', 'Sư phạm Vật lí', 'D29', 5, '7140211', 21.75),
(286, 'TCT', 'Sư phạm Hóa học', 'A00', 5, '7140212', 23.25),
(287, 'TCT', 'Sư phạm Hóa học', 'B00', 5, '7140212', 23.25),
(288, 'TCT', 'Sư phạm Hóa học', 'D07', 5, '7140212', 23.25),
(289, 'TCT', 'Sư phạm Hóa học', 'D24', 5, '7140212', 23.25),
(290, 'TCT', 'Sư phạm Sinh học', 'B00', 10, '7140213', 21),
(291, 'TCT', 'Sư phạm Sinh học', 'D08', 10, '7140213', 21),
(292, 'TCT', 'Sư phạm Ngữ văn', 'C00', 7, '7140217', 25),
(293, 'TCT', 'Sư phạm Ngữ văn', 'D14', 7, '7140217', 25),
(294, 'TCT', 'Sư phạm Ngữ văn', 'D15', 6, '7140217', 25),
(295, 'TCT', 'Sư phạm Lịch sử', 'C00', 7, '7140218', 23.75),
(296, 'TCT', 'Sư phạm Lịch sử', 'D14', 7, '7140218', 23.75),
(297, 'TCT', 'Sư phạm Lịch sử', 'D64', 7, '7140218', 23.75),
(298, 'TCT', 'Sư phạm Địa lý', 'C00', 5, '7140219', 24),
(299, 'TCT', 'Sư phạm Địa lý', 'C04', 5, '7140219', 24),
(300, 'TCT', 'Sư phạm Địa lý', 'D15', 5, '7140219', 24),
(301, 'TCT', 'Sư phạm Địa lý', 'D44', 5, '7140219', 24),
(302, 'TCT', 'Sư phạm tiếng Anh', 'D01', 7, '7140231', 24.5),
(303, 'TCT', 'Sư phạm tiếng Anh', 'D14', 7, '7140231', 24.5),
(304, 'TCT', 'Sư phạm tiếng Anh', 'D15', 6, '7140231', 24.5),
(305, 'TCT', 'Sư phạm tiếng Pháp', 'D03', 5, '7140233', 16.25),
(306, 'TCT', 'Sư phạm tiếng Pháp', 'D01', 5, '7140233', 16.25),
(307, 'TCT', 'Sư phạm tiếng Pháp', 'D14', 5, '7140233', 16.25),
(308, 'TCT', 'Sư phạm tiếng Pháp', 'D64', 5, '7140233', 16.25),
(309, 'TCT', 'Việt Nam học', 'C00', 33, '7310630', 24.5),
(310, 'TCT', 'Việt Nam học', 'D01', 33, '7310630', 24.5),
(311, 'TCT', 'Việt Nam học', 'D14', 32, '7310630', 24.5),
(312, 'TCT', 'Việt Nam học', 'D15', 32, '7310630', 24.5),
(313, 'TCT', 'Văn học', 'C00', 37, '7229030', 22.75),
(314, 'TCT', 'Văn học', 'D14', 37, '7229030', 22.75),
(315, 'TCT', 'Văn học', 'D15', 36, '7229030', 22.75),
(316, 'TCT', 'Ngôn ngữ Anh', 'D01', 60, '7220201', 23.5),
(317, 'TCT', 'Ngôn ngữ Anh', 'D14', 60, '7220201', 23.5),
(318, 'TCT', 'Ngôn ngữ Anh', 'D15', 60, '7220201', 23.5),
(319, 'TCT', 'Ngôn ngữ Pháp', 'D03', 15, '7220203', 18),
(320, 'TCT', 'Ngôn ngữ Pháp', 'D01', 15, '7220203', 18),
(321, 'TCT', 'Ngôn ngữ Pháp', 'D14', 15, '7220203', 18),
(322, 'TCT', 'Ngôn ngữ Pháp', 'D64', 15, '7220203', 18),
(323, 'TCT', 'Triết học', 'C00', 20, '7229001', 21.5),
(324, 'TCT', 'Triết học', 'D14', 20, '7229001', 21.5),
(325, 'TCT', 'Triết học', 'D15', 20, '7229001', 21.5),
(326, 'TCT', 'Triết học', 'C19', 20, '7229001', 21.5),
(327, 'TCT', 'Chính trị học', 'C00', 20, '7310201', 23.5),
(328, 'TCT', 'Chính trị học', 'D14', 20, '7310201', 23.5),
(329, 'TCT', 'Chính trị học', 'D15', 20, '7310201', 23.5),
(330, 'TCT', 'Chính trị học', 'C19', 20, '7310201', 23.5),
(331, 'TCT', 'Xã hội học', 'A01', 20, '7310301', 22.75),
(332, 'TCT', 'Xã hội học', 'C00', 20, '7310301', 22.75),
(333, 'TCT', 'Xã hội học', 'D01', 20, '7310301', 22.75),
(334, 'TCT', 'Xã hội học', 'C19', 20, '7310301', 22.75),
(335, 'TCT', 'Thông tin thư viện', 'A01', 15, '7320201', 17.75),
(336, 'TCT', 'Thông tin thư viện', 'D01', 15, '7320201', 17.75),
(337, 'TCT', 'Thông tin thư viện', 'D29', 15, '7320201', 17.75),
(338, 'TCT', 'Thông tin thư viện', 'D03', 15, '7320201', 17.75),
(339, 'TCT', 'Quản trị kinh doanh', 'A00', 30, '7340101', 22.5),
(340, 'TCT', 'Quản trị kinh doanh', 'A01', 30, '7340101', 22.5),
(341, 'TCT', 'Quản trị kinh doanh', 'D01', 30, '7340101', 22.5),
(342, 'TCT', 'Quản trị kinh doanh', 'C02', 30, '7340101', 22.5),
(343, 'TCT', 'Kinh tế', 'A00', 30, '7310101', 21.25),
(344, 'TCT', 'Kinh tế', 'A01', 30, '7310101', 21.25),
(345, 'TCT', 'Kinh tế', 'D01', 30, '7310101', 21.25),
(346, 'TCT', 'Kinh tế', 'C02', 30, '7310101', 21.25),
(347, 'TCT', 'Quản trị dịch vụ du lịch và lữ hành', 'A00', 28, '7810103', 22.5),
(348, 'TCT', 'Quản trị dịch vụ du lịch và lữ hành', 'A01', 28, '7810103', 22.5),
(349, 'TCT', 'Quản trị dịch vụ du lịch và lữ hành', 'D01', 27, '7810103', 22.5),
(350, 'TCT', 'Quản trị dịch vụ du lịch và lữ hành', 'C02', 27, '7810103', 22.5),
(351, 'TCT', 'Marketing', 'A00', 20, '7340115', 22.25),
(352, 'TCT', 'Marketing', 'A01', 20, '7340115', 22.25),
(353, 'TCT', 'Marketing', 'D01', 20, '7340115', 22.25),
(354, 'TCT', 'Marketing', 'C02', 20, '7340115', 22.25),
(355, 'TCT', 'Kinh doanh quốc tế', 'A00', 33, '7340120', 22.25),
(356, 'TCT', 'Kinh doanh quốc tế', 'A01', 33, '7340120', 22.25),
(357, 'TCT', 'Kinh doanh quốc tế', 'D01', 32, '7340120', 22.25),
(358, 'TCT', 'Kinh doanh quốc tế', 'C02', 32, '7340120', 22.25),
(359, 'TCT', 'Kinh doanh thương mại', 'A00', 28, '7340121', 21.25),
(360, 'TCT', 'Kinh doanh thương mại', 'A01', 28, '7340121', 21.25),
(361, 'TCT', 'Kinh doanh thương mại', 'D01', 27, '7340121', 21.25),
(362, 'TCT', 'Kinh doanh thương mại', 'C02', 27, '7340121', 21.25),
(363, 'TCT', 'Tài chính - ngân hàng', 'A00', 30, '7340201', 21.75),
(364, 'TCT', 'Tài chính - ngân hàng', 'A01', 30, '7340201', 21.75),
(365, 'TCT', 'Tài chính - ngân hàng', 'D01', 30, '7340201', 21.75),
(366, 'TCT', 'Tài chính - ngân hàng', 'C02', 30, '7340201', 21.75),
(367, 'TCT', 'Kế toán', 'A00', 30, '7340301', 22.75),
(368, 'TCT', 'Kế toán', 'A01', 30, '7340301', 22.75),
(369, 'TCT', 'Kế toán', 'D01', 30, '7340301', 22.75),
(370, 'TCT', 'Kế toán', 'C02', 30, '7340301', 22.75),
(371, 'TCT', 'Kiểm toán', 'A00', 25, '7340302', 21),
(372, 'TCT', 'Kiểm toán', 'A01', 25, '7340302', 21),
(373, 'TCT', 'Kiểm toán', 'D01', 25, '7340302', 21),
(374, 'TCT', 'Kiểm toán', 'C02', 25, '7340302', 21),
(375, 'TCT', 'Luật', 'A00', 70, '7380101', 25.25),
(376, 'TCT', 'Luật', 'C00', 70, '7380101', 25.25),
(377, 'TCT', 'Luật', 'D01', 70, '7380101', 25.25),
(378, 'TCT', 'Luật', 'D03', 70, '7380101', 25.25),
(379, 'TCT', 'Sinh học', 'B00', 55, '7420101', 17.5),
(380, 'TCT', 'Sinh học', 'D08', 55, '7420101', 17.5),
(381, 'TCT', 'Công nghệ sinh học', 'A00', 34, '7420201', 22.75),
(382, 'TCT', 'Công nghệ sinh học', 'B00', 33, '7420201', 22.75),
(383, 'TCT', 'Công nghệ sinh học', 'D07', 33, '7420201', 22.75),
(384, 'TCT', 'Công nghệ sinh học', 'D08', 33, '7420201', 22.75),
(385, 'TCT', 'Sinh học ứng dụng', 'A00', 15, '7420203', 18.75),
(386, 'TCT', 'Sinh học ứng dụng', 'B00', 15, '7420203', 18.75),
(387, 'TCT', 'Sinh học ứng dụng', 'A01', 15, '7420203', 18.75),
(388, 'TCT', 'Sinh học ứng dụng', 'D08', 15, '7420203', 18.75),
(389, 'TCT', 'Hóa học', 'A00', 20, '7440112', 19.75),
(390, 'TCT', 'Hóa học', 'B00', 20, '7440112', 19.75),
(391, 'TCT', 'Hóa học', 'D07', 20, '7440112', 19.75),
(392, 'TCT', 'Hóa dược', 'A00', 20, '7720203', 24),
(393, 'TCT', 'Hóa dược', 'B00', 20, '7720203', 24),
(394, 'TCT', 'Hóa dược', 'D07', 20, '7720203', 24),
(395, 'TCT', 'Khoa học môi trường', 'A00', 37, '7440301', 17),
(396, 'TCT', 'Khoa học môi trường', 'B00', 37, '7440301', 17),
(397, 'TCT', 'Khoa học môi trường', 'D07', 37, '7440301', 17),
(398, 'TCT', 'Khoa học đất', 'B00', 20, '7620103', 15.5),
(399, 'TCT', 'Khoa học đất', 'A00', 20, '7620103', 15.5),
(400, 'TCT', 'Khoa học đất', 'D07', 20, '7620103', 15.5),
(401, 'TCT', 'Khoa học đất', 'D08', 20, '7620103', 15.5),
(402, 'TCT', 'Toán ứng dụng', 'A00', 20, '7460112', 15.5),
(403, 'TCT', 'Toán ứng dụng', 'A01', 20, '7460112', 15.5),
(404, 'TCT', 'Toán ứng dụng', 'B00', 20, '7460112', 15.5),
(405, 'TCT', 'Khoa học máy tính', 'A00', 60, '7480101', 16.5),
(406, 'TCT', 'Khoa học máy tính', 'A01', 60, '7480101', 16.5),
(407, 'TCT', 'Mạng máy tính và truyền thông dữ liệu', 'A00', 60, '7480102', 18.25),
(408, 'TCT', 'Mạng máy tính và truyền thông dữ liệu', 'A01', 60, '7480102', 18.25),
(409, 'TCT', 'Kỹ thuật phần mềm', 'A00', 70, '7480103', 20.5),
(410, 'TCT', 'Kỹ thuật phần mềm', 'A01', 70, '7480103', 20.5),
(411, 'TCT', 'Hệ thống thông tin', 'A00', 50, '7480104', 16.5),
(412, 'TCT', 'Hệ thống thông tin', 'A01', 50, '7480104', 16.5),
(413, 'TCT', 'Công nghệ thông tin', 'A00', 120, '7480201', 20.25),
(414, 'TCT', 'Công nghệ thông tin', 'A01', 120, '7480201', 20.25),
(415, 'TCT', 'Công nghệ hóa học', 'A00', 30, '7510401', 21.25),
(416, 'TCT', 'Công nghệ hóa học', 'B00', 30, '7510401', 21.25),
(417, 'TCT', 'Công nghệ hóa học', 'A01', 30, '7510401', 21.25),
(418, 'TCT', 'Công nghệ hóa học', 'D07', 30, '7510401', 21.25),
(419, 'TCT', 'Kỹ thuật vật liệu', 'A00', 15, '7520309', 15.5),
(420, 'TCT', 'Kỹ thuật vật liệu', 'B00', 15, '7520309', 15.5),
(421, 'TCT', 'Kỹ thuật vật liệu', 'A01', 15, '7520309', 15.5),
(422, 'TCT', 'Kỹ thuật vật liệu', 'D07', 15, '7520309', 15.5),
(423, 'TCT', 'Quản lý công nghiệp', 'A00', 40, '7510601', 18.75),
(424, 'TCT', 'Quản lý công nghiệp', 'A01', 40, '7510601', 18.75),
(425, 'TCT', 'Quản lý công nghiệp', 'D01', 40, '7510601', 18.75),
(426, 'TCT', 'Kỹ thuật cơ khí', 'A00', 125, '7520103', 20.5),
(427, 'TCT', 'Kỹ thuật cơ khí', 'A01', 125, '7520103', 20.5),
(428, 'TCT', 'Kỹ thuật cơ điện tử', 'A00', 55, '7520114', 20.5),
(429, 'TCT', 'Kỹ thuật cơ điện tử', 'A01', 55, '7520114', 20.5),
(430, 'TCT', 'Kỹ thuật điện', 'A00', 50, '7520201', 20),
(431, 'TCT', 'Kỹ thuật điện', 'A01', 50, '7520201', 20),
(432, 'TCT', 'Kỹ thuật điện', 'D07', 50, '7520201', 20),
(433, 'TCT', 'Kỹ thuật điện tử - viễn thông', 'A00', 55, '7520207', 18.25),
(434, 'TCT', 'Kỹ thuật điện tử - viễn thông', 'A01', 55, '7520207', 18.25),
(435, 'TCT', 'Kỹ thuật máy tính', 'A00', 60, '7480106', 16.5),
(436, 'TCT', 'Kỹ thuật máy tính', 'A01', 60, '7480106', 16.5),
(437, 'TCT', 'Kỹ thuật điều khiển và tự động hóa', 'A00', 55, '7520216', 19),
(438, 'TCT', 'Kỹ thuật điều khiển và tự động hóa', 'A01', 55, '7520216', 19),
(439, 'TCT', 'Kỹ thuật môi trường', 'A00', 30, '7520320', 16.5),
(440, 'TCT', 'Kỹ thuật môi trường', 'B00', 30, '7520320', 16.5),
(441, 'TCT', 'Kỹ thuật môi trường', 'D07', 30, '7520320', 16.5),
(442, 'TCT', 'Kỹ thuật môi trường', 'A01', 30, '7520320', 16.5),
(443, 'TCT', 'Vật lí kỹ thuật', 'A00', 17, '7520401', 15.5),
(444, 'TCT', 'Vật lí kỹ thuật', 'A01', 17, '7520401', 15.5),
(445, 'TCT', 'Vật lí kỹ thuật', 'A02', 16, '7520401', 15.5),
(446, 'TCT', 'công nghệ thực phẩm', 'A00', 40, '7540101', 21.75),
(447, 'TCT', 'công nghệ thực phẩm', 'B00', 40, '7540101', 21.75),
(448, 'TCT', 'công nghệ thực phẩm', 'D07', 40, '7540101', 21.75),
(449, 'TCT', 'công nghệ thực phẩm', 'A01', 40, '7540101', 21.75),
(450, 'TCT', 'công nghệ sau thu hoạch', 'A00', 18, '7540104', 18),
(451, 'TCT', 'công nghệ sau thu hoạch', 'B00', 18, '7540104', 18),
(452, 'TCT', 'công nghệ sau thu hoạch', 'D07', 16, '7540104', 18),
(453, 'TCT', 'công nghệ sau thu hoạch', 'A01', 16, '7540104', 18),
(454, 'TCT', 'công nghệ chế biến thủy sản', 'A00', 23, '7540105', 19),
(455, 'TCT', 'công nghệ chế biến thủy sản', 'B00', 23, '7540105', 19),
(456, 'TCT', 'công nghệ chế biến thủy sản', 'D07', 22, '7540105', 19),
(457, 'TCT', 'công nghệ chế biến thủy sản', 'A01', 22, '7540105', 19),
(458, 'TCT', 'Kỹ thuật xây dựng', 'A00', 80, '7580201', 19.25),
(459, 'TCT', 'Kỹ thuật xây dựng', 'A01', 80, '7580201', 19.25),
(460, 'TCT', 'Kỹ thuật xây dựng công trình thủy lợi', 'A00', 30, '7580202', 15.5),
(461, 'TCT', 'Kỹ thuật xây dựng công trình thủy lợi', 'A01', 30, '7580202', 15.5),
(462, 'TCT', 'Kỹ thuật xây dựng công trình giao thông', 'A00', 30, '7580202', 18),
(463, 'TCT', 'Kỹ thuật xây dựng công trình giao thông', 'A01', 30, '7580202', 18),
(464, 'TCT', 'Kỹ thuật tài nguyên nước', 'A00', 20, '7580212', 15.5),
(465, 'TCT', 'Kỹ thuật tài nguyên nước', 'A01', 20, '7580212', 15.5),
(466, 'TCT', 'Kỹ thuật tài nguyên nước', 'D07', 20, '7580212', 15.5),
(467, 'TCT', 'chăn nuôi', 'A00', 30, '7620105', 16.25),
(468, 'TCT', 'chăn nuôi', 'B00', 30, '7620105', 16.25),
(469, 'TCT', 'chăn nuôi', 'A02', 30, '7620105', 16.25),
(470, 'TCT', 'chăn nuôi', 'D08', 30, '7620105', 16.25),
(471, 'TCT', 'nông học', 'B00', 20, '7620109', 20.25),
(472, 'TCT', 'nông học', 'D08', 20, '7620109', 20.25),
(473, 'TCT', 'nông học', 'D07', 20, '7620109', 20.25),
(474, 'TCT', 'khoa học cây trồng', 'B00', 38, '7620110', 17.25),
(475, 'TCT', 'khoa học cây trồng', 'A02', 38, '7620110', 17.25),
(476, 'TCT', 'khoa học cây trồng', 'D07', 36, '7620110', 17.25),
(477, 'TCT', 'khoa học cây trồng', 'D08', 36, '7620110', 17.25),
(478, 'TCT', 'bảo vệ thực vật', 'B00', 47, '7620112', 20.75),
(479, 'TCT', 'bảo vệ thực vật', 'D07', 47, '7620112', 20.75),
(480, 'TCT', 'bảo vệ thực vật', 'D08', 46, '7620112', 20.75),
(481, 'TCT', 'công nghệ rau quả và cảnh quan', 'B00', 15, '7620113', 15.5),
(482, 'TCT', 'công nghệ rau quả và cảnh quan', 'D07', 15, '7620113', 15.5),
(483, 'TCT', 'công nghệ rau quả và cảnh quan', 'D08', 15, '7620113', 15.5),
(484, 'TCT', 'công nghệ rau quả và cảnh quan', 'A00', 15, '7620113', 15.5),
(485, 'TCT', 'kinh tế nông nghiệp', 'A00', 30, '7620115', 18.5),
(486, 'TCT', 'kinh tế nông nghiệp', 'A01', 30, '7620115', 18.5),
(487, 'TCT', 'kinh tế nông nghiệp', 'D01', 30, '7620115', 18.5),
(488, 'TCT', 'kinh tế nông nghiệp', 'C02', 30, '7620115', 18.5),
(489, 'TCT', 'phát triển nông thôn', 'A00', 20, '7620116', 15.5),
(490, 'TCT', 'phát triển nông thôn', 'B00', 20, '7620116', 15.5),
(491, 'TCT', 'phát triển nông thôn', 'A01', 20, '7620116', 15.5),
(492, 'TCT', 'phát triển nông thôn', 'D07', 20, '7620116', 15.5),
(493, 'TCT', 'lâm sinh', 'A00', 15, '7620205', 15.5),
(494, 'TCT', 'lâm sinh', 'A01', 15, '7620205', 15.5),
(495, 'TCT', 'lâm sinh', 'B00', 15, '7620205', 15.5),
(496, 'TCT', 'lâm sinh', 'D08', 15, '7620205', 15.5),
(497, 'TCT', 'nuôi trồng thủy sản', 'B00', 35, '7620301', 17),
(498, 'TCT', 'nuôi trồng thủy sản', 'A00', 35, '7620301', 17),
(499, 'TCT', 'nuôi trồng thủy sản', 'D07', 35, '7620301', 17),
(500, 'TCT', 'nuôi trồng thủy sản', 'D07', 35, '7620301', 17),
(501, 'TCT', 'bệnh học thủy sản', 'B00', 15, '7620302', 16.25),
(502, 'TCT', 'bệnh học thủy sản', 'A00', 15, '7620302', 16.25),
(503, 'TCT', 'bệnh học thủy sản', 'D07', 15, '7620302', 16.25),
(504, 'TCT', 'bệnh học thủy sản', 'D08', 15, '7620302', 16.25),
(505, 'TCT', 'quản lý thủy sản', 'B00', 15, '7620305', 15.5),
(506, 'TCT', 'quản lý thủy sản', 'A00', 15, '7620305', 15.5),
(507, 'TCT', 'quản lý thủy sản', 'D07', 15, '7620305', 15.5),
(508, 'TCT', 'quản lý thủy sản', 'D08', 15, '7620305', 15.5),
(509, 'TCT', 'thú y', 'B00', 35, '7640101', 21.75),
(510, 'TCT', 'thú y', 'A02', 35, '7640101', 21.75),
(511, 'TCT', 'thú y', 'D07', 35, '7640101', 21.75),
(512, 'TCT', 'thú y', 'D08', 35, '7640101', 21.75),
(513, 'TCT', 'quản lý tài nguyên và môi trường', 'A00', 15, '7850101', 21),
(514, 'TCT', 'quản lý tài nguyên và môi trường', 'A01', 15, '7850101', 21),
(515, 'TCT', 'quản lý tài nguyên và môi trường', 'B00', 15, '7850101', 21),
(516, 'TCT', 'quản lý tài nguyên và môi trường', 'D07', 15, '7850101', 21),
(517, 'TCT', 'kinh tế tài nguyên thiên nhiên', 'A00', 15, '7850102', 18.75),
(518, 'TCT', 'kinh tế tài nguyên thiên nhiên', 'A01', 15, '7850102', 18.75),
(519, 'TCT', 'kinh tế tài nguyên thiên nhiên', 'D01', 15, '7850102', 18.75),
(520, 'TCT', 'kinh tế tài nguyên thiên nhiên', 'C02', 15, '7850102', 18.75),
(521, 'TCT', 'quản lý đất đai', 'A00', 23, '7850103', 19),
(522, 'TCT', 'quản lý đất đai', 'A01', 23, '7850103', 19),
(523, 'TCT', 'quản lý đất đai', 'B00', 23, '7850103', 19),
(524, 'TCT', 'quản lý đất đai', 'D07', 23, '7850103', 19);
