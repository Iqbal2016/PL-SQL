
Working with an explicit cursor includes the following steps −

1. Declaring the cursor for initializing the memory
2. Opening the cursor for allocating the memory
3. Fetching the cursor for retrieving the data
4. Closing the cursor to release the allocated memory

-------------------------------------------------------------------------------------------------------------------

Declaring the Cursor:

Declaring the cursor defines the cursor with a name and the associated SELECT statement. For example −

CURSOR c_customer IS 
   SELECT id, name, address FROM customer; 

-----------------------------------------------------------------------------------------------------------------

Opening the Cursor:

Opening the cursor allocates the memory for the cursor and makes it ready for fetching the rows returned by the SQL statement into it. For example, we will open the above defined cursor as follows −

OPEN c_customer; 

--------------------------------------------------------------------------------------------------------------

Fetching the Cursor:
Fetching the cursor involves accessing one row at a time. For example, we will fetch rows from the above-opened cursor as follows −

FETCH c_customer INTO c_id, c_name, c_addr; 

--------------------------------------------------------------------------------------------------------------

Closing the Cursor:
Closing the cursor means releasing the allocated memory. For example, we will close the above-opened cursor as follows −

CLOSE c_customer;


------------------------------------------------------------------------------------------------------------

DECLARE 
   c_id customer.id%type; 
   c_name customer.name%type; 
   c_addr customer.address%type; 
   CURSOR c_customer is 
      SELECT id, name, address FROM customer; 
BEGIN 
   OPEN c_customer; 
   LOOP 
   FETCH c_customer into c_id, c_name, c_addr; 
      EXIT WHEN c_customer%notfound; 
      dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr); 
   END LOOP; 
   CLOSE c_customer; 
END; 
/

----------------------------------------------------------------------------------------------------------