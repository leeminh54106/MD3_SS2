create table color(
id int primary key auto_increment,
name varchar(100),
status bit
);

create table product(
id int primary key auto_increment,
name varchar(100),
created date
);

create table size(
id int primary key auto_increment,
name varchar(100),
status bit
);

CREATE TABLE product_detail (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    FOREIGN KEY (product_id)
        REFERENCES product (id),
    color_id INT,
    FOREIGN KEY (color_id)
        REFERENCES color (id),
    size_id INT,
    FOREIGN KEY (size_id)
        REFERENCES size (id),
    price DOUBLE,
    stock INT,
    status BIT
);

show tables;