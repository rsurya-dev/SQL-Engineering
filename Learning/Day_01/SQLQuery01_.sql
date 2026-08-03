SELECT
    DB_NAME(database_id) AS DatabaseName,
    type_desc,
    physical_name
FROM sys.master_files
ORDER BY DatabaseName;

SELECT
    d.name AS DatabaseName,
    f.physical_name,
    d.create_date
FROM sys.databases AS d
JOIN sys.master_files AS f
    ON d.database_id = f.database_id
WHERE d.name = 'DBDS';


CREATE TABLE CUST
(
    CID INT PRIMARY KEY,
    S_NAME VARCHAR(30),
    GENDER CHAR(1),
    AGE INT
);

INSERT INTO CUST
VALUES
(101,'Sachin','M',40),
(102,'Sindhu','F',45);

SELECT * FROM CUST;

