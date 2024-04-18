create database quanlyvattu;

use quanlyvattu;

-- Tạo các bảng
CREATE TABLE VatTu (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ma_vat_tu VARCHAR(50) UNIQUE NOT NULL,
    ten_vat_tu VARCHAR(100) NOT NULL,
    don_vi_tinh VARCHAR(50),
    gia_tien DECIMAL(10, 2)
);

CREATE TABLE TonKho (
    id INT PRIMARY KEY AUTO_INCREMENT,
    vat_tu_id INT,
    so_luong_dau INT,
    tong_so_luong_nhap INT,
    tong_so_luong_xuat INT,
    FOREIGN KEY (vat_tu_id) REFERENCES VatTu(id)
);

CREATE TABLE NhaCungCap (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ma_nha_cung_cap VARCHAR(50) UNIQUE NOT NULL,
    ten_nha_cung_cap VARCHAR(100) NOT NULL,
    dia_chi VARCHAR(255),
    so_dien_thoai VARCHAR(20)
);

CREATE TABLE DonDatHang (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ma_don VARCHAR(50) UNIQUE NOT NULL,
    ngay_dat_hang DATE,
    nha_cung_cap_id INT,
    FOREIGN KEY (nha_cung_cap_id) REFERENCES NhaCungCap(id)
);

CREATE TABLE PhieuNhap (
    id INT PRIMARY KEY AUTO_INCREMENT,
    so_phieu_nhap VARCHAR(50) UNIQUE NOT NULL,
    ngay_nhap DATE,
    don_dat_hang_id INT,
    FOREIGN KEY (don_dat_hang_id) REFERENCES DonDatHang(id)
);

CREATE TABLE PhieuXuat (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ngay_xuat DATE,
    ten_khach_hang VARCHAR(100)
);

CREATE TABLE CT_DonDatHang (
    id INT PRIMARY KEY AUTO_INCREMENT,
    don_dat_hang_id INT,
    vat_tu_id INT,
    so_luong_dat INT,
    FOREIGN KEY (don_dat_hang_id) REFERENCES DonDatHang(id),
    FOREIGN KEY (vat_tu_id) REFERENCES VatTu(id)
);

CREATE TABLE CT_PhieuNhap (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phieu_nhap_id INT,
    vat_tu_id INT,
    so_luong_nhap INT,
    don_gia_nhap DECIMAL(10, 2),
    ghi_chu TEXT,
    FOREIGN KEY (phieu_nhap_id) REFERENCES PhieuNhap(id),
    FOREIGN KEY (vat_tu_id) REFERENCES VatTu(id)
);

CREATE TABLE CT_PhieuXuat (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phieu_xuat_id INT,
    vat_tu_id INT,
    so_luong_xuat INT,
    don_gia_xuat DECIMAL(10, 2),
    ghi_chu TEXT,
    FOREIGN KEY (phieu_xuat_id) REFERENCES PhieuXuat(id),
    FOREIGN KEY (vat_tu_id) REFERENCES VatTu(id)
);

-- Thêm dữ liệu
INSERT INTO VatTu (ma_vat_tu, ten_vat_tu, don_vi_tinh, gia_tien) VALUES
('VT001', 'Bút bi đen', 'Cái', 5000),
('VT002', 'Giấy A4', 'Tờ', 2000),
('VT003', 'Bìa còng', 'Cái', 3000),
('VT004', 'Hồ sơ đựng giấy', 'Cái', 10000),
('VT005', 'Dây chuyền', 'Cái', 20000);

INSERT INTO TonKho (vat_tu_id, so_luong_dau, tong_so_luong_nhap, tong_so_luong_xuat) VALUES
(1, 100, 500, 400),
(2, 200, 800, 500),
(3, 50, 200, 150),
(4, 80, 300, 250),
(5, 30, 100, 50),
(1, 120, 550, 450),
(2, 220, 850, 600),
(3, 60, 250, 200),
(4, 100, 400, 300),
(5, 40, 120, 80);

INSERT INTO NhaCungCap (ma_nha_cung_cap, ten_nha_cung_cap, dia_chi, so_dien_thoai) VALUES
('NCC001', 'Công ty A', '123 Đường ABC, Thành phố X', '0123456789'),
('NCC002', 'Công ty B', '456 Đường XYZ, Thành phố Y', '0987654321'),
('NCC003', 'Công ty C', '789 Đường LMN, Thành phố Z', '0369852147');

INSERT INTO DonDatHang (ma_don, ngay_dat_hang, nha_cung_cap_id) VALUES
('DH001', '2024-04-01', 1),
('DH002', '2024-04-05', 2),
('DH003', '2024-04-10', 3);

INSERT INTO PhieuNhap (so_phieu_nhap, ngay_nhap, don_dat_hang_id) VALUES
('PN001', '2024-04-03', 1),
('PN002', '2024-04-07', 2),
('PN003', '2024-04-12', 3);

INSERT INTO PhieuXuat (ngay_xuat, ten_khach_hang) VALUES
('2024-04-02', 'Khách hàng A'),
('2024-04-06', 'Khách hàng B'),
('2024-04-11', 'Khách hàng C');

INSERT INTO CT_DonDatHang (don_dat_hang_id, vat_tu_id, so_luong_dat) VALUES
(1, 1, 50),
(1, 2, 100),
(2, 3, 20),
(2, 4, 30),
(3, 5, 10),
(3, 1, 70);

INSERT INTO CT_PhieuNhap (phieu_nhap_id, vat_tu_id, so_luong_nhap, don_gia_nhap, ghi_chu) VALUES
(1, 1, 50, 4000, 'Ghi chú cho phiếu nhập 1'),
(1, 2, 120, 1800, 'Ghi chú cho phiếu nhập 1'),
(2, 3, 25, 2500, 'Ghi chú cho phiếu nhập 2'),
(2, 4, 40, 9000, 'Ghi chú cho phiếu nhập 2'),
(3, 5, 15, 18000, 'Ghi chú cho phiếu nhập 3'),
(3, 1, 80, 4500, 'Ghi chú cho phiếu nhập 3');

INSERT INTO CT_PhieuXuat (phieu_xuat_id, vat_tu_id, so_luong_xuat, don_gia_xuat, ghi_chu) VALUES
(1, 1, 30, 6000, 'Ghi chú cho phiếu xuất 1'),
(1, 2, 80, 2500, 'Ghi chú cho phiếu xuất 1'),
(2, 3, 15, 3200, 'Ghi chú cho phiếu xuất 2'),
(2, 4, 20, 10500, 'Ghi chú cho phiếu xuất 2'),
(3, 5, 8, 20000, 'Ghi chú cho phiếu xuất 3'),
(3, 1, 45, 5500, 'Ghi chú cho phiếu xuất 3');

-- Tạo các view
-- Câu 1. Tạo view có tên vw_CTPNHAP bao gồm các thông tin sau: số phiếu nhập hàng, mã vật tư, số lượng nhập, đơn giá nhập, thành tiền nhập.
create view vw_CTPNHAP as
select p.so_phieu_nhap as SốPhiếuNhậpHàng,
        ctn.vat_tu_id as MãVậtTư,
        ctn.so_luong_nhap as SốLượngNhập,
        ctn.don_gia_nhap as ĐơnGiáNhập,
        ctn.so_luong_nhap * ctn.don_gia_nhap as ThànhTiền
from phieunhap p join ct_phieunhap ctn 
    on p.id = ctn.phieu_nhap_id
-- test
SELECT * FROM vw_ctpnhap;

-- Câu 2. Tạo view có tên vw_CTPNHAP_VT bao gồm các thông tin sau: số phiếu nhập hàng, mã vật tư, tên vật tư, số lượng nhập, đơn giá nhập, thành tiền nhập.
select * from ct_phieunhap;
select * from vattu;
select * from phieunhap;

create view vw_CTPNHAP_VT as
select pn.so_phieu_nhap as SốPhiếuNhậpHàng,
        vt.ma_vat_tu as MãVậtTư,
        vt.ten_vat_tu as TênVậtTư,
        ctn.so_luong_nhap as SoLuongNhap,
        ctn.so_luong_nhap * ctn.don_gia_nhap as ThànhTiền
from ct_phieunhap ctn
    join vattu vt on ctn.phieu_nhap_id = vt.id
    join phieunhap pn on ctn.phieu_nhap_id = pn.id;

-- test

SELECT * FROM vw_ctpnhap_vt;

-- Câu 3. Tạo view có tên vw_CTPNHAP_VT_PN bao gồm các thông tin sau: số phiếu nhập hàng, ngày nhập hàng, số đơn đặt hàng, mã vật tư, tên vật tư,
-- số lượng nhập, đơn giá nhập, thành tiền nhập.
select * from dondathang;
select * from ct_dondathang;

create view vw_CTPNHAP_VT_PN as
select pn.so_phieu_nhap as SốPhiếuNhậpHàng,
        pn.ngay_nhap as NgayNhap,
        count(distinct ctddh.don_dat_hang_id) as SoDonDatHang,
        vt.ma_vat_tu as MãVậtTư,
        vt.ten_vat_tu as TênVậtTư,
        ctn.so_luong_nhap as SoLuongNhap,
        ctn.so_luong_nhap * ctn.don_gia_nhap as ThànhTiền
from ct_phieunhap ctn
    join vattu vt on ctn.phieu_nhap_id = vt.id
    join phieunhap pn on ctn.phieu_nhap_id = pn.id
    join dondathang ddh on pn.don_dat_hang_id = ddh.id
    join ct_dondathang ctddh on pn.don_dat_hang_id = ctddh.don_dat_hang_id
group by pn.so_phieu_nhap, pn.ngay_nhap, ctn.vat_tu_id, ctn.so_luong_nhap, ctn.don_gia_nhap, vt.ten_vat_tu;

-- test

SELECT * FROM vw_ctpnhap_vt_pn;

-- Câu 4. Tạo view có tên vw_CTPNHAP_VT_PN_DH bao gồm các thông tin sau: số phiếu nhập hàng, ngày nhập hàng, số đơn đặt hàng, mã nhà cung cấp, mã vật tư,
-- tên vật tư, số lượng nhập, đơn giá nhập, thành tiền nhập.
create view vw_CTPNHAP_VT_PN_DH as
select pn.so_phieu_nhap as "Số phiếu nhập hàng",
        pn.ngay_nhap as "Ngày nhập hàng",
        count(distinct ctddh.don_dat_hang_id) as "Số đơn đặt hàng",
        ddh.nha_cung_cap_id as "Mã nhà cung cấp",
        vt.ma_vat_tu as "Mã vật tư",
        vt.ten_vat_tu as "Tên vật tư",
        ctn.so_luong_nhap as "Số lượng nhập hàng",
        ctn.don_gia_nhap as "Đơn giá nhập hàng",
        ctn.so_luong_nhap * ctn.don_gia_nhap as "Thành tiền nhập"
from ct_phieunhap ctn
    join vattu vt on ctn.phieu_nhap_id = vt.id
    join phieunhap pn on ctn.phieu_nhap_id = pn.id
    join dondathang ddh on pn.don_dat_hang_id = ddh.id
    join ct_dondathang ctddh on pn.don_dat_hang_id = ctddh.don_dat_hang_id
group by pn.so_phieu_nhap, pn.ngay_nhap, ctn.vat_tu_id, ctn.so_luong_nhap, ctn.don_gia_nhap, vt.ten_vat_tu;

-- test

SELECT * FROM vw_ctpnhap_vt_pn_dh;

-- Câu 5. Tạo view có tên vw_CTPNHAP_loc  bao gồm các thông tin sau: số phiếu nhập hàng, mã vật tư, số lượng nhập, đơn giá nhập, thành tiền nhập.
--Và chỉ liệt kê các chi tiết nhập có số lượng nhập > 30.

create view vw_CTPNHAP_loc as
select pn.so_phieu_nhap as "Số phiếu nhập hàng",
        vt.ma_vat_tu as "Mã vật tư",
        ctn.so_luong_nhap as "Số lượng nhập",
        ctn.don_gia_nhap as "Đơn giá nhập",
        ctn.so_luong_nhap * ctn.don_gia_nhap as "Thành tiền nhập"
from ct_phieunhap ctn
    join vattu vt on ctn.phieu_nhap_id = vt.id
    join phieunhap pn on ctn.phieu_nhap_id = pn.id
WHERE "Số lượng nhập" > 30;

-- test

SELECT * FROM vw_ctpnhap_loc;

-- Câu 6. Tạo view có tên vw_CTPNHAP_VT_loc bao gồm các thông tin sau: số phiếu nhập hàng, mã vật tư, tên vật tư, số lượng nhập, đơn giá nhập,
-- thành tiền nhập. Và chỉ liệt kê các chi tiết nhập vật tư có đơn vị tính là Cái.

create view vw_CTPNHAP_VT_loc_dvt as
select pn.so_phieu_nhap as "Số phiếu nhập hàng",
        vt.ma_vat_tu as "Mã vật tư",
        vt.ten_vat_tu as "Tên vật tư",
        vt.don_vi_tinh as "Đơn vị tính",
        ctn.so_luong_nhap as "Số lượng nhập",
        ctn.don_gia_nhap as "Đơn giá nhập",
        ctn.so_luong_nhap * ctn.don_gia_nhap as "Thành tiền nhập"
from ct_phieunhap ctn
    join vattu vt on ctn.phieu_nhap_id = vt.id
    join phieunhap pn on ctn.phieu_nhap_id = pn.id
where "Đơn vị tính" like "Cái";

-- test

SELECT * FROM vw_ctpnhap_vt_loc_dvt;

-- Câu 7. Tạo view có tên vw_CTPXUAT bao gồm các thông tin sau: số phiếu xuất hàng, mã vật tư, số lượng xuất, đơn giá xuất, thành tiền xuất.

create view vw_CTPXUAT as
SELECT count(px.id) as SoPhieuXuat,
        vt.ma_vat_tu as MaVatTu,
        ctx.so_luong_xuat as SoLuongXuat,
        ctx.don_gia_xuat as DonGiaXuat,
        ctx.so_luong_xuat * ctx.don_gia_xuat as ThanhTienXuat
FROM phieuxuat px
    join ct_phieuxuat ctx on px.id = ctx.phieu_xuat_id
    join vattu vt on ctx.vat_tu_id = vt.id;
    



