

-- insert data
delimiter $$
create procedure insert_ketnoi()
begin
declare x integer;
declare wlan varchar(120);
declare bluetooth varchar(120);
declare gps varchar(120);
set x=0;
insert_loop : Loop 
	set x = x+1;
	set wlan = Concat('wlan ', x);
	set bluetooth = Concat('bluetooth ', x);
	set gps = Concat('gps ', x);
	insert into ketnoi values (x, wlan, bluetooth, gps);
	if(x = 10) then
	leave insert_loop;
	end if;
end Loop insert_loop;
end
call insert_ketnoi


delimiter $$
create procedure insert_thongsocamera()
begin
declare x integer;
declare diemmanh varchar(120);
declare thongsocoban varchar(120);
declare dacdiem varchar(120);
set x=0;
insert_loop : Loop 
	set x = x+1;
	set diemmanh = Concat('diemmanh ', x);
	set thongsocoban = Concat('thongsocoban ', x);
	set dacdiem = Concat('dacdiem ', x);
	insert into thongsocamera values (x, diemmanh, thongsocoban, dacdiem);
	if(x = 10) then
	leave insert_loop;
	end if;
end Loop insert_loop;
end


call insert_thongsocamera



delimiter $$
create procedure insert_sanpham()
begin
declare x integer;
declare tensanpham varchar(120);
declare kichthucman varchar(120);
declare thongsoman varchar(120);
declare pin varchar(120);
declare macameratruoc integer;
declare macamerasau integer;
declare kichthuoc varchar(120);
declare khoiluong varchar(120);
declare thoidiemramat varchar(120);
declare chipset varchar(120);
declare tscpu varchar(120);
declare bonhoram varchar(120);
declare ketnoi integer;
declare hedieuhanh varchar(120);
declare baomatvantay varchar(120);
declare chongnuoc varchar(120);
declare anhdaidien varchar(120);
declare danhsachlienquan text;
declare dongsp_catalog varchar(120);
set x=0;
insert_loop : Loop 
	set x = x+1;
	set tensanpham = Concat('tensanpham ', x);
	set kichthucman = Concat('kichthucman ', x);
	set thongsoman = Concat('thongsoman ', x);
	set pin = Concat('pin ', x);
	set macameratruoc = FLOOR(1 +rand()*10);
	set macamerasau =  FLOOR(1 +rand()*10);
	set kichthuoc = Concat('kichthuoc ', x);
	set khoiluong = Concat('khoiluong ', x);
	set thoidiemramat = Concat('thoidiemramat ', x);
	set chipset = Concat('chipset ', x);
	set tscpu = Concat('tscpu ', x);
	set bonhoram = Concat('bonhoram ', x);
	set ketnoi = FLOOR(1 +rand()*10);
	set hedieuhanh = Concat('hedieuhanh ', x);
	set baomatvantay = Concat('baomatvantay ', x);
	set chongnuoc = Concat('chongnuoc ', x);
	set anhdaidien = Concat('anhdaidien ', x);
	set danhsachlienquan = Concat('danhsachlienquan ', x);
	set dongsp_catalog = Concat('dongsp_catalog ', x);
	insert into sanpham values (x, tensanpham, kichthucman, thongsoman, pin, macameratruoc, macamerasau, kichthuoc, khoiluong, thoidiemramat, chipset, tscpu, bonhoram, ketnoi, hedieuhanh, baomatvantay, chongnuoc, anhdaidien, danhsachlienquan, dongsp_catalog);
	if(x = 10) then
	leave insert_loop;
	end if;
end Loop insert_loop;
end
call insert_sanpham



delimiter $$
create procedure insert_tuychon()
begin
declare x integer;
declare mausac varchar(120);
declare bonhotrong varchar(120);
set x=0;
insert_loop : Loop 
	set x = x+1;
	set mausac = Concat('mausac ', x);
	set bonhotrong = Concat('bonhotrong ', x);
	insert into tuychon values (x, mausac, bonhotrong );
	if(x = 10) then
	leave insert_loop;
	end if;
end Loop insert_loop;
end

call insert_tuychon


delimiter $$
create procedure insert_sanpham_tuychon()
begin
declare x integer;
declare masp integer;
declare matuychon integer;
declare soluong integer;
declare giasanpham double;
set x=0;
insert_loop : Loop 
	set x = x+1;
	set masp = FLOOR(1 +rand()*10);
	set matuychon = FLOOR(1 +rand()*10);
	set soluong = 0;
	set giasanpham = FLOOR(1000000 +rand()*20000000);
	insert into sanpham_tuychon values (x, masp, matuychon, soluong, giasanpham );
	if(x = 10) then
	leave insert_loop;
	end if;
end Loop insert_loop;
end

call insert_sanpham_tuychon

delimiter $$
create procedure insert_sanpham_tuychon()
begin
declare x integer;
declare masp integer;
declare matuychon integer;
declare soluong integer;
declare giasanpham double;
set x=0;
insert_loop : Loop 
	set x = x+1;
	set masp = FLOOR(1 +rand()*10);
	set matuychon = FLOOR(1 +rand()*10);
	set soluong = 0;
	set giasanpham = FLOOR(1000000 +rand()*20000000);
	insert into sanpham_tuychon values (x, masp, matuychon, soluong, giasanpham );
	if(x = 10) then
	leave insert_loop;
	end if;
end Loop insert_loop;
end
