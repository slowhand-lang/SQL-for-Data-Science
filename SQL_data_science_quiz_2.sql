--Find all the tracks that have a length of 5,000,000 milliseconds or more.

SELECT *
FROM TRACKS
  WHERE Milliseconds >= 5000000;
  
--Find all the invoices whose total is between $5 and $15 dollars.

SELECT *
  FROM INVOICES
    WHERE TOTAL > 5 AND TOTAL < 15;
    
 --Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.
 
 SELECT *
  FROM CUSTOMERS 
    WHERE STATE IN ('RJ','DF','AB','BC','CA','WA','NY')
    
 --Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.
 
 SELECT *
  FROM INVOICES 
    WHERE CUSTOMERID IN ('56','58')
      AND
        TOTAL BETWEEN 1 AND 5;
        
 --Find all the tracks whose name starts with 'All'.
 
 SELECT *  
  FROM TRACKS 
    WHERE NAME LIKE 'ALL%';
    
--Find all the customer emails that start with "J" and are from gmail.com.

SELECT *
  FROM CUSTOMERS
    WHERE EMAIL LIKE 'J%GMAIL.COM';
    
--Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.

SELECT * 
  FROM INVOICES
    WHERE BILLINGCITY IN ('Brasília', 'Edmonton', 'Vancouver')
      ORDER BY InvoiceId DESC;
      
--Show the number of orders placed by each customer (hint: this is found in the invoices table) 
and sort the result by the number of orders in descending order.

SELECT CUSTOMERID, COUNT (*) AS ORDERS 
FROM INVOICES 
GROUP BY CUSTOMERID
ORDER BY ORDERS DESC

--Find the albums with 12 or more tracks.

SELECT ALBUMID, COUNT(*) AS NTRACKS
FROM TRACKS
GROUP BY ALBUMID
HAVING COUNT(*) >=12;

