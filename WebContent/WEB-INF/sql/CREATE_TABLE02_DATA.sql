-- data type
-- number
-- INT, DECIMAL
CREATE TABLE MyTable3
(
 Col1 INT,
 Col2 DECIMAL
);
INSERT INTO MyTable3
(Col1, Col2)
VALUES
(55, 3.14);
SELECT * FROM MyTable3;
DESC MyTable3;

CREATE TABLE MyTable4
(
	Col1 DECIMAL,
    Col2 DECIMAL(10, 2),
    Col3 DECIMAL(3, 1)
);

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(3.14, 3.14, 3.14);
SELECT * FROM MyTable4;

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(333.14, 333.14, 33.1); -- ok

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(333.14, 333.14, 333.1); -- not ok

SELECT * FROM MyTable4;


-- char(String)

-- date, datetime
CREATE TABLE MyTable5
(
	Col1 CHAR(5),   -- 고정 자리수
    Col2 VARCHAR(5) -- 가변 자리수
);

INSERT INTO MyTable5
(Col1, Col2)
VALUES
('abc', 'abc');

INSERT INTO MyTable5
(Col1, Col2)
VALUES
('abcde', 'abcde');

SELECT * FROM MyTable5;

-- date, datetime

SELECT * FROM MyTable5;

-- date, datetime

SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';
SELECT * FROM MyTable5;
-- 'abc  ', 'abc'

SET sql_mode = '';
SELECT * FROM MyTable5;
-- 'abc', 'abc'

-- date, datetime

CREATE DATABASE test2;

SELECT * FROM Member;

USE test2;



CREATE TABLE Member (
	id VARCHAR(255),
    password VARCHAR(255),
    name VARCHAR(255),
    birth DATE,
    inserted TIMESTAMP
    );
    
    USE test;
    
    CREATE TABLE MyTable8
    (
    id INT NOT NULL,
    name VARCHAR(255) Not Null
    );
    INSERT INTO MyTable8
    (id, name)
    VALUES(3, 'hello');
    
    SELECT * FROM MyTable8;
    
    DESC MyTable8;