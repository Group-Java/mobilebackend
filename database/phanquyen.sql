
-- Khach hang------------------------------------------------------------------------------
create user 'khachhang'@'localhost' identified by '123123';

grant select on thietbididong.sanpham to 'khachhang'@'localhost';

grant select on thietbididong.ketnoi to 'khachhang'@'localhost';

grant select on thietbididong.sanpham_tuychon to 'khachhang'@'localhost';

grant select on thietbididong.thongsocamera to 'khachhang'@'localhost';

grant select on thietbididong.tuychon to 'khachhang'@'localhost';

grant select, update, insert on thietbididong.taikhoan to 'khachhang'@'localhost';

grant select on thietbididong.hoadon to 'khachhang'@'localhost';

grant select on thietbididong.cthoadon to 'khachhang'@'localhost';

grant select, update, insert on thietbididong.phieudat to 'khachhang'@'localhost';

grant select, update, insert on thietbididong.ctphieudat to 'khachhang'@'localhost';


-- cap hieu luc cho phan quyen;
flush privileges;





-- Nhan vien ban--------------------------------------------------------------------------------
create user 'nhanvienban'@'localhost' identified by '123123';

grant select on thietbididong.sanpham to 'nhanvienban'@'localhost';

grant select on thietbididong.ketnoi to 'nhanvienban'@'localhost';

grant select on thietbididong.sanpham_tuychon to 'nhanvienban'@'localhost';

grant select on thietbididong.thongsocamera to 'nhanvienban'@'localhost';

grant select on thietbididong.tuychon to 'nhanvienban'@'localhost';

grant select on thietbididong.taikhoan to 'nhanvienban'@'localhost';

grant select on thietbididong.kho to 'nhanvienban'@'localhost';

grant select, update on thietbididong.phieudat to 'nhanvienban'@'localhost';

grant select, update on thietbididong.ctphieudat to 'nhanvienban'@'localhost';

grant select, update, insert on thietbididong.hoadon to 'nhanvienban'@'localhost';

grant select, update, insert on thietbididong.cthoadon to 'nhanvienban'@'localhost';

grant select, insert, update on thietbididong.phieuthu to 'nhanvienban'@'localhost';

grant select on thietbididong.phieuxuat to 'nhanvienban'@'localhost';

-- cap hieu luc cho phan quyen;
flush privileges;




-- Nhan vien kho bai-------------------------------------------------------------------------
create user 'nhanvienkho'@'localhost' identified by '123123';
-- content

grant select, insert, update on thietbididong.sanpham to 'nhanvienkho'@'localhost';

grant select, insert, update on thietbididong.ketnoi to 'nhanvienkho'@'localhost';

grant select, insert, update on thietbididong.sanpham_tuychon to 'nhanvienkho'@'localhost';

grant select, insert, update on thietbididong.thongsocamera to 'nhanvienkho'@'localhost';

grant select, insert, update on thietbididong.tuychon to 'nhanvienkho'@'localhost';

grant select on thietbididong.taikhoan to 'nhanvienkho'@'localhost';

grant select, insert, update on thietbididong.phieunhap to 'nhanvienkho'@'localhost';

grant select, insert, update on thietbididong.phieuchi to 'nhanvienkho'@'localhost';

grant select, insert, update on thietbididong.kho to 'nhanvienkho'@'localhost';

grant select on thietbididong.hoadon to 'nhanvienkho'@'localhost';

grant select on thietbididong.cthoadon to 'nhanvienkho'@'localhost';

grant select, insert, update on thietbididong.phieuxuat to 'nhanvienkho'@'localhost';

--endcontent

-- cap hieu luc cho phan quyen;
flush privileges;


-- Admin-------------------------------------------------------------------------------------
create user 'admin'@'localhost' identified by '123123';
-- content
grant all on thietbididong.* to 'admin'@'localhost';

--endcontent

-- cap hieu luc cho phan quyen;
flush privileges;
