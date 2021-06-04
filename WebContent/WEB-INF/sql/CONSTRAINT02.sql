-- UNIQUE

CREATE TABLE MyTable9 (
id INT UNIQUE,
name VARCHAR(255)
);

INSERT INTO MyTable9
(id, name)
VALUES
(2, 'hello');

SELECT * FROM MyTable9;

INSERT INTO MyTable9
(id, name)
VALUES
(2, 'hello'); -- x

INSERT INTO MyTable9
(id, name)
VALUES
(3, 'hello'); -- x

INSERT INTO MyTable9
(name)
VALUES 
('donald');

SELECT * FROM MyTable9
Where id IS NULL;

SELECT * FROM MyTable9
Where id IS NOT NULL;


-- IFNULL
SELECT ifnull(id, 0), name FROM MyTable9;

CREATE TABLE MyTable10
(
id INT UNIQUE NOT NULL,
name VARCHAR(255) NOT NULL
);

-- PRIMARY KEY
-- 각 레코드(row)를 유일하게 구분할 수 있는 컬럼
-- 각 테이블에 최대 한개

CREATE TABLE MyTable11
(
id INT PRIMARY KEY,
name VARCHAR(255)
);
DESC MyTable11;

INSERT INTO MyTable11
(id, name)
VALUES 
(1, 'donald');

SELECT * FROM MyTable11;

INSERT INTO MyTable11
(name)
VALUES
('mickey'); -- x

-- auto_increment
CREATE TABLE MyTable12 (
 id INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(255) NOT NULL ,
 body VARCHAR(255) NOT NULL
);
INSERT INTO MyTable12 
(title, body)
VALUES
('제목1', '본문1');
SELECT * FROM MyTable12;

-- DEFAULT

CREATE TABLE MyTable13
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    body VARCHAR(255) NOT NULL,
    inserted TIMESTAMP
);

INSERT INTO MyTable13
(title, body, inserted)
VALUES
('title1', 'body1', NOW());

SELECT * FROM MyTable13;

CREATE TABLE MyTable14
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    body VARCHAR(255) NOT NULL,
    inserted TIMESTAMP DEFAULT NOW()
);

INSERT INTO MyTable14
(title, body)
VALUES
('title1', 'body1');

SELECT * FROM MyTable14;

CREATE TABLE MyTable15
(
	col1 INT DEFAULT 10,
    col2 VARCHAR(255) DEFAULT 'hello'
);
INSERT INTO MyTable15
(col1)
VALUES
(30);

INSERT INTO MyTable15
(col2)
VALUES
('hi');

SELECT * FROM MyTable15;

-- ALTER TABLE
CREATE TABLE MyTable16
(
	id INT,
    title VARCHAR(255),
    body VARCHAR(255)
);

-- add column
ALTER TABLE MyTable16
ADD inserted TIMESTAMP;

DESC MyTable16;

-- drop column
ALTER TABLE MyTable16
DROP COLUMN inserted;
-- modify column
ALTER TABLE MyTable16
MODIFY COLUMN body VARCHAR(1023);

-- add not null
ALTER TABLE MyTable16
MODIFY title VARCHAR(255) NOT NULL;

DESC MyTable16;

INSERT INTO MyTable16
(id, title)
VALUES
(1, 'title1');

SELECT * FROM MyTable16;

ALTER TABLE MyTable16
MODIFY body VARCHAR(1023) NOT NULL;

UPDATE MyTable16
SET body = ''
WHERE body IS NULL;


-- add unique
ALTER TABLE MyTable16
ADD UNIQUE (id);

DESC MyTable16;

-- add primary key
ALTER TABLE MyTable16
ADD PRIMARY KEY (id);

-- remove primary key
ALTER TABLE MyTable16
DROP PRIMARY KEY;

-- add auto_increment
ALTER TABLE MyTable16
MODIFY id INT PRIMARY KEY AUTO_INCREMENT;























