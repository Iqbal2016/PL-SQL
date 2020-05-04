-----------------------------SQL Query Results to PL/SQL Variables-----------------------------------

CREATE TABLE CUSTOMER( 
   ID   INT NOT NULL, 
   NAME VARCHAR (20) NOT NULL, 
   AGE INT NOT NULL, 
   ADDRESS CHAR (25), 
   SALARY   DECIMAL (18, 2),        
   PRIMARY KEY (ID) 
);

--------------------------------------------------------------Insert----------------------------------------


INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY) 
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );  

INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY) 
VALUES (2, 'Khilan', 25, 'Delhi', 1500.00 );  

INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY) 
VALUES (3, 'kaushik', 23, 'Kota', 2000.00 );
  
INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY) 
VALUES (4, 'Chaitali', 25, 'Mumbai', 6500.00 ); 
 
INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY) 
VALUES (5, 'Hardik', 27, 'Bhopal', 8500.00 );  

INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY) 
VALUES (6, 'Komal', 22, 'MP', 4500.00 ); 

---------------------------------------------Select---------------------------------------------

Select * from customers;  

------------------------------------------------------SELECT INTO clause-------------------------------

DECLARE 
   c_id customer.id%type := 1; 
   c_name  customer.name%type; 
   c_addr customer.address%type; 
   c_sal  customer.salary%type; 
BEGIN 
   SELECT name, address, salary INTO c_name, c_addr, c_sal 
   FROM customer 
   WHERE id = c_id;  
   dbms_output.put_line('Customer ' ||c_name || ' from ' || c_addr || ' earns ' || c_sal); 
END; 
/ 


--------------------------------------------cursor------------------------------------------------------------
CURSOR c_customer IS 
   SELECT id, name, address FROM customer; 

-----------------------------------------------cursor----------------------------------------------------

DECLARE 
   CURSOR c_customer is 
   SELECT  name FROM customer; 
   type c_list is varray (6) of customer.name%type; 
   name_list c_list := c_list(); 
   counter integer :=0; 
BEGIN 
   FOR n IN c_customer LOOP 
      counter := counter + 1; 
      name_list.extend; 
      name_list(counter)  := n.name; 
      dbms_output.put_line('Customer('||counter ||'):'||name_list(counter)); 
   END LOOP; 
END; 
/ 

--------------------------------------------------------------------------------------------------------------