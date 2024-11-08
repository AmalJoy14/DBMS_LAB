INSERT INTO LANGUAGE VALUES(100, 'ENGLISH');
INSERT INTO LANGUAGE VALUES(101, 'HINDI');
INSERT INTO LANGUAGE VALUES(102, 'MALAYALAM');

INSERT INTO PUBLISHER VALUES(001, 'ALBERT','My Street, Kingston, New York 12401');
INSERT INTO PUBLISHER VALUES(002, 'WILLIOM','123 Main Street, apt 4B San Diego CA, 91911');

ALTER TABLE BOOK ADD Discount NUMBER(5);

INSERT INTO BOOK VALUES(1, 'The Road', 100, 999, 001 , '12-02-2012' , 2 , 'Active',100);
INSERT INTO BOOK VALUES(2, 'In the Woods', 102, 1999, 001 , '12-02-2012' , 1 , 'Active',1000);
INSERT INTO BOOK VALUES(3, 'Dune', 101, 1000, 002 , '15-07-2022' , 1 , 'Active',200);

INSERT INTO AUTHOR VALUES (1, 'John Doe', 'john.doe@example.com', 1234567890, 'Active');
INSERT INTO AUTHOR VALUES (2, 'Jane Smith', 'jane.smith@example.com', 2345678901, 'Inactive');
INSERT INTO AUTHOR VALUES (3, 'Alice Johnson', 'alice.johnson@example.com', 3456789012, 'Active');\
INSERT INTO AUTHOR VALUES (4, 'Bob Brown', 'bob.brown@example.com', 4567890123, 'Retired');

INSERT INTO LATE_FEE_RULE VALUES (0, 7, 10);
INSERT INTO LATE_FEE_RULE VALUES (7, 30, 100);
INSERT INTO LATE_FEE_RULE VALUES (30, 365 , 3650);

ALTER TABLE MEMBER MODIFY BRANCH_CODE VARCHAR(3);

INSERT INTO MEMBER VALUES (1, 'John Sui', 'BR1', 45, 1234567890, 'john.sui@example.com','05-08-2024', 'Active');
INSERT INTO MEMBER VALUES (2, 'Jane Leo', 'BR2', 21, 9876543210, 'jane.leo@example.com', '10-08-2024', 'Inactive');
INSERT INTO MEMBER VALUES (3, 'Ali', 'BR3', 78, 5551234567, 'ali@example.com','15-08-2024','Active');


INSERT INTO BOOK_ISSUE VALUES (1,'01-08-2024', 1, 1, '15-08-2024', 'Issued');
INSERT INTO BOOK_ISSUE VALUES (2, '05-08-2024', 2, 2,'20-08-2024', 'Issued');
INSERT INTO BOOK_ISSUE VALUES (3, '08-08-2024', 3, 3, '25-08-2024', 'Issued');

INSERT INTO BOOK_RETURN VALUES (1, '16-08-2024', 15, 100);
INSERT INTO BOOK_RETURN VALUES (2, '21-08-2024', 16, 100);
INSERT INTO BOOK_RETURN VALUES (3, '26-08-2024', 18, 100);


DESC BOOK;
SELECT * FROM BOOK_RETURN;
COMMIT;

CREATE TABLE EMPLOYEE14 (EmpNo NUMBER(3), Name VARCHAR(10));
SELECT * FROM EMPLOYEE14;
