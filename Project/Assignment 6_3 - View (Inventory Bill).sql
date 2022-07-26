USE INVENTORY;

/* VIEW ALL THE TABLES */
SELECT * FROM ADD_SUP;
SELECT * FROM ADD_PROD;
SELECT * FROM ADD_CUST;
SELECT * FROM ADD_ORD;
SELECT * FROM ADD_STK;

/* DROP VIEW BILL; */

/* CREATE A VIEW 'BILL' TO DISPLAY ADD_ORD = (OID, ODATE, OQTY), ADD_CUST = (CNAME, ADDRESS, PHONE), ADD_PROD = (PDESC, PRICE), AMOUNT */
/* PERFORM INNER JOIN ON 3 TABLES: ADD_ORD, ADD_CUST, ADD_PROD */
CREATE VIEW BILL
AS
          SELECT ADD_ORD.OID, ODATE, CNAME, ADDRESS, PHONE, PDESC, PRICE, OQTY, PRICE * OQTY AS 'AMOUNT'
		  FROM ADD_ORD
          INNER JOIN ADD_CUST
          ON ADD_ORD.CID = ADD_CUST.CID
		  INNER JOIN ADD_PROD
		  ON ADD_ORD.PID = ADD_PROD.PID;

SELECT * FROM BILL;


