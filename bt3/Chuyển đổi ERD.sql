create database chuen_doi_ERD;
use chuen_doi_ERD;
create table phieuxuat(
sopx int primary key auto_increment,
ngayxuat datetime);

create table vattu(
mavt int primary key auto_increment,
tenvt varchar(255));

CREATE TABLE phieuxuatchitiet (
    sopx INT,
    FOREIGN KEY (sopx)
        REFERENCES phieuxuat (sopx),
    mavt INT,
    FOREIGN KEY (mavt)
        REFERENCES vattu (mavt),
    dongiaxuat DOUBLE,
    soluongxuat INT PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE phieunhap (
    sopn INT,
    ngaynhap DATETIME
);
alter table phieunhap add constraint pk_phieunhap primary key auto_increment (sopn);
CREATE TABLE phieunhapchitiet (
    sopn INT,
    FOREIGN KEY (sopn)
        REFERENCES phieunhap (sopn),
    mavt INT,
    FOREIGN KEY (mavt)
        REFERENCES vattu (mavt),
    dongianhap DOUBLE,
    soluongnhap INT PRIMARY KEY AUTO_INCREMENT
);

create table ngacungcap(
manccc int primary key auto_increment,
tenncc varchar(255),
diachi varchar(255),
sodienthoai varchar(11));
CREATE TABLE dondathang (
    sodh INT PRIMARY KEY AUTO_INCREMENT,
    manccc INT,
    FOREIGN KEY (manccc)
        REFERENCES ngacungcap (manccc),
    ngaydh DATETIME
);
CREATE TABLE chitietdonhang (
    mavt INT,
    FOREIGN KEY (mavt)
        REFERENCES vattu (mavt),
    sodh INT,
    FOREIGN KEY (sodh)
        REFERENCES dondathang (sodh)
);
