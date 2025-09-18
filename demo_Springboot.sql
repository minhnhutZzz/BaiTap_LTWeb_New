
use demo_Springboot;
go
-- Tạo bảng accounts
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    images VARCHAR(255),
    password VARCHAR(255) NOT NULL,
    status VARCHAR(50)
);

-- Tạo bảng category
CREATE TABLE category (
    category_id INT PRIMARY KEY,
    categorycode VARCHAR(50) NOT NULL,
    categoryname VARCHAR(255) NOT NULL,
    images VARCHAR(255),
    status VARCHAR(50)
);

-- Tạo bảng videos
CREATE TABLE videos (
    video_id INT PRIMARY KEY,
    active BIT NOT NULL,
    description TEXT,
    poster VARCHAR(255),
    title VARCHAR(255) NOT NULL,
    views INT DEFAULT 0,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);

-- Tạo bảng users
CREATE TABLE users (
    username VARCHAR(50) PRIMARY KEY,
    active BIT NOT NULL,
    email VARCHAR(255) NOT NULL,
    fullname VARCHAR(255),
    images VARCHAR(255),
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(20)
);

-- Tạo bảng shares
CREATE TABLE shares (
    share_id INT PRIMARY KEY,
    emails VARCHAR(255),
    shared_date DATE,
    username VARCHAR(50),
    video_id INT,
    FOREIGN KEY (username) REFERENCES users(username),
    FOREIGN KEY (video_id) REFERENCES videos(video_id)
);

-- Tạo bảng favorites
CREATE TABLE favorites (
    favorite_id INT PRIMARY KEY,
    liked_date DATE,
    username VARCHAR(50),
    video_id INT,
    FOREIGN KEY (username) REFERENCES users(username),
    FOREIGN KEY (video_id) REFERENCES videos(video_id)
);
