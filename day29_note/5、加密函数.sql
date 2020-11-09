/*
加密函数
*/
INSERT INTO USER VALUES('lin',PASSWORD('123'),NOW())
INSERT INTO USER VALUES('yan',MD5('123'),NOW())

SELECT * FROM `user` WHERE username = 'yan' AND `password`= MD5('123')