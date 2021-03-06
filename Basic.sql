SET serveroutput ON;

DECLARE 
   message  varchar2(20):= 'Hello, World!'; 
BEGIN 
   dbms_output.put_line(message); 
END; 
/ 

---------------------------------------------------------------------------------------------------------

DECLARE
    address varchar2(255):='Banasree, Rampura, Dhaka -1219';
BEGIN
    DBMS_OUTPUT.PUT_LINE(address);
END;
/

---------------------------------------------------------------------------------------------------------

DECLARE 
   SUBTYPE name IS char(20); 
   SUBTYPE message IS varchar2(100); 
   salutation name; 
   greetings message; 
BEGIN 
   salutation := 'Iqbal Hossain '; 
   greetings := 'Welcome to the World of PL/SQL'; 
   dbms_output.put_line('Hello ' || salutation || greetings); 
END; 
/

------------------------------------------------------------------------------------------------------------

create or replace PROCEDURE EMP_LIST
IS
BEGIN
SELECT EMPLOYEE_ID, EMAIL, FIRST_NAME, LAST_NAME, PHONE_NUMBER from employees;
END;

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE print_contact(
    in_customer_id NUMBER 
)
IS
  r_contact contacts%ROWTYPE;
BEGIN
  -- get contact based on customer id
  SELECT *
  INTO r_contact
  FROM employees
  WHERE employee_id = p_customer_id;

  -- print out contact's information
  dbms_output.put_line( r_contact.first_name || ' ' ||
  r_contact.last_name || '<' || r_contact.email ||'>' );

EXCEPTION
   WHEN OTHERS THEN
      dbms_output.put_line( SQLERRM );
END;

--------------------------------------------------------------------------------------------------------

DECLARE
l_EMPLOYEE_ID   NUMBER;
l_EMAIL         VARCHAR2(250);
l_SALARY        NUMBER;
l_MANAGER_ID    NUMBER;
BEGIN
    SELECT EMPLOYEE_ID, EMAIL,SALARY,MANAGER_ID INTO l_EMPLOYEE_ID,l_EMAIL,l_SALARY,l_MANAGER_ID 
    FROM EMPLOYEES 
    WHERE EMPLOYEE_ID=1; 
dbms_output.put line('Employee Detail');
dbms_output.put_line('Employee Name:'||l_EMPLOYEE_ID);
dbms_output.put_line('Employee Number:'||l_EMAIL);
dbms_output.put_line('Employee Salary:'||l_SALARY);
dbms_output.put line('Emplovee Manager Name:'||l_MANAGER_ID):
END;
/

--------------------------------------------------------------------------------------------------------

