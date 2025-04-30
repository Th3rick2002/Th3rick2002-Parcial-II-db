CREATE DATABASE social_media;

USE social_media;

CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(25) NOT NULL,
    lastName VARCHAR(25) NOT NULL,
    userName VARCHAR(25) UNIQUE NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    createdAT DATETIME DEFAULT NOW(),
    updateAt DATETIME DEFAULT NOW()
);

CREATE TABLE Publications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mediaURL VARCHAR(255) NOT NULL,
    text VARCHAR(255),
    likes INT DEFAULT 0
);

CREATE TABLE Publications_Users (
    idUser INT,
    idPublication INT,
    createdAT DATETIME DEFAULT NOW(),
    updateAt DATETIME DEFAULT NOW(),

    PRIMARY KEY (idUser, idPublication),

    FOREIGN KEY (idUser) REFERENCES Users(id),
    FOREIGN KEY (idPublication) REFERENCES Publications(id)
);

DESCRIBE Users;
DESCRIBE Publications;
DESCRIBE Publications_Users;
