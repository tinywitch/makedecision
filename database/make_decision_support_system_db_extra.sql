
--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `fuzzy_set`
--
ALTER TABLE `fuzzy_set`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `khoi_nganh`
--
ALTER TABLE `khoi_nganh`
  ADD PRIMARY KEY (`Khoi_Nganh_ID`);

--
-- Chỉ mục cho bảng `khoi_thi`
--
ALTER TABLE `khoi_thi`
  ADD PRIMARY KEY (`Khoi_Thi_ID`);

--
-- Chỉ mục cho bảng `linh_vuc_dao_tao`
--
ALTER TABLE `linh_vuc_dao_tao`
  ADD PRIMARY KEY (`Linh_Vuc_Dao_Tao_ID`),
  ADD KEY `Khoi_Nganh_ID` (`Khoi_Nganh_ID`);

--
-- Chỉ mục cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`Nganh_ID`),
  ADD KEY `Nhom_Nganh_ID` (`Nhom_Nganh_ID`);

--
-- Chỉ mục cho bảng `nhom_nganh`
--
ALTER TABLE `nhom_nganh`
  ADD PRIMARY KEY (`Nhom_Nganh_ID`),
  ADD KEY `Linh_Vuc_Dao_Tao_ID` (`Linh_Vuc_Dao_Tao_ID`);

--
-- Chỉ mục cho bảng `thuoc_tinh_bai_toan_1`
--
ALTER TABLE `thuoc_tinh_bai_toan_1`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `thuoc_tinh_bai_toan_2`
--
ALTER TABLE `thuoc_tinh_bai_toan_2`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `to_chuc_dao_tao`
--
ALTER TABLE `to_chuc_dao_tao`
  ADD PRIMARY KEY (`To_Chuc_Dao_Tao_ID`);

--
-- Chỉ mục cho bảng `trong_so`
--
ALTER TABLE `trong_so`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tuyen_sinh`
--
ALTER TABLE `tuyen_sinh`
  ADD PRIMARY KEY (`Tuyen_Sinh_ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `khoi_nganh`
--
ALTER TABLE `khoi_nganh`
  MODIFY `Khoi_Nganh_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `khoi_thi`
--
ALTER TABLE `khoi_thi`
  MODIFY `Khoi_Thi_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT cho bảng `linh_vuc_dao_tao`
--
ALTER TABLE `linh_vuc_dao_tao`
  MODIFY `Linh_Vuc_Dao_Tao_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `nganh`
--
ALTER TABLE `nganh`
  MODIFY `Nganh_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT cho bảng `nhom_nganh`
--
ALTER TABLE `nhom_nganh`
  MODIFY `Nhom_Nganh_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `thuoc_tinh_bai_toan_2`
--
ALTER TABLE `thuoc_tinh_bai_toan_2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `to_chuc_dao_tao`
--
ALTER TABLE `to_chuc_dao_tao`
  MODIFY `To_Chuc_Dao_Tao_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `tuyen_sinh`
--
ALTER TABLE `tuyen_sinh`
  MODIFY `Tuyen_Sinh_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=525;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `linh_vuc_dao_tao`
--
ALTER TABLE `linh_vuc_dao_tao`
  ADD CONSTRAINT `linh_vuc_dao_tao_ibfk_1` FOREIGN KEY (`Khoi_Nganh_ID`) REFERENCES `khoi_nganh` (`Khoi_Nganh_ID`);

--
-- Các ràng buộc cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD CONSTRAINT `nganh_ibfk_1` FOREIGN KEY (`Nhom_Nganh_ID`) REFERENCES `nhom_nganh` (`Nhom_Nganh_ID`);

--
-- Các ràng buộc cho bảng `nhom_nganh`
--
ALTER TABLE `nhom_nganh`
  ADD CONSTRAINT `nhom_nganh_ibfk_1` FOREIGN KEY (`Linh_Vuc_Dao_Tao_ID`) REFERENCES `linh_vuc_dao_tao` (`Linh_Vuc_Dao_Tao_ID`);
