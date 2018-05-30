
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fuzzy_set`
--

CREATE TABLE `fuzzy_set` (
  `ID` int(10) NOT NULL,
  `Bien_Ngon_Ngu` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `a1` float NOT NULL,
  `b1` float NOT NULL,
  `c1` float NOT NULL,
  `d1` float NOT NULL,
  `h11` float NOT NULL,
  `h12` float NOT NULL,
  `a2` float NOT NULL,
  `b2` float NOT NULL,
  `c2` float NOT NULL,
  `d2` float NOT NULL,
  `h21` float NOT NULL,
  `h22` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `fuzzy_set`
--

INSERT INTO `fuzzy_set` (`ID`, `Bien_Ngon_Ngu`, `a1`, `b1`, `c1`, `d1`, `h11`, `h12`, `a2`, `b2`, `c2`, `d2`, `h21`, `h22`) VALUES
(1, 'cuc_ky_thich', 0.8, 0.9, 1, 1, 1, 1, 0.85, 0.93, 1, 1, 0.8, 0.8),
(2, 'rat_thich', 0.6, 0.7, 0.9, 1, 1, 1, 0.65, 0.73, 0.87, 0.95, 0.8, 0.8),
(3, 'yeu_thich', 0.4, 0.5, 0.7, 0.8, 1, 1, 0.45, 0.53, 0.67, 0.75, 0.8, 0.8),
(4, 'binh_thuong', 0.2, 0.3, 0.5, 0.6, 1, 1, 0.25, 0.33, 0.47, 0.55, 0.8, 0.8),
(5, 'khong_thich', 0, 0.1, 0.3, 0.4, 1, 1, 0.05, 0.13, 0.27, 0.35, 0.8, 0.8),
(6, 'rat_khong_thich', 0, 0, 0.1, 0.2, 1, 1, 0, 0, 0.05, 0.15, 0.8, 0.8);
