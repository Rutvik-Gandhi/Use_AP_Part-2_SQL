-- ex3_RG.sql
-- Winter 2023 Exercise 3
-- Revision History:
-- Rutvik Gandhi, Section 3, 2023.03.20: Created
-- Rutvik Gandhi, Section 3, 2023.03.20: Modified

Print 'W23 PROG8080 Section 3';
Print 'Exercise 3';
Print '';
Print 'Rutvik Gandhi';
Print '';
Print GETDATE();
Print '';

USE AP;

-- Question 1
Print '*** Question 1 ***';
print '';

SELECT InvoiceNumber, VendorName
FROM Vendors, Invoices
WHERE VENDORS.VendorID = Invoices.VendorID AND VendorName = 'Compuserve';

-- Question 2
Print '*** Question 2 ***';
print '';

SELECT InvoiceNumber, Vendors.VendorID, VendorName, InvoiceDueDate
	, (InvoiceTotal - PaymentTotal - CreditTotal) AS BalanceDue
FROM Vendors JOIN Invoices
	ON Vendors.VendorID = Invoices.VendorID
WHERE InvoiceTotal - PaymentTotal - CreditTotal > 500
ORDER BY BalanceDue;

-- Question 3
Print '*** Question 3 ***';
print '';

SELECT Vendors.VendorID, VendorName, InvoiceNumber, InvoiceTotal
FROM Vendors LEFT JOIN Invoices
	ON VENDORS.VendorID = Invoices.VendorID 
WHERE VendorName LIKE 'in%'
ORDER BY VendorName DESC
;

-- Question 4
Print '*** Question 4 ***';
print '';

SELECT 'After 12/31/2018' AS SelectionDate
	, MIN(InvoiceTotal) AS LowestInvoiceTotal
	, MAX(InvoiceTotal) AS HighestInvoiceTotal
FROM Invoices
WHERE InvoiceDate > '2018-12-31';

-- Question 5
Print '*** Question 5 ***';
print '';

SELECT VendorState, VendorCity
	, COUNT(InvoiceTotal) AS InvoiceQty
	, FORMAT(CAST(AVG(InvoiceTotal) AS money), 'C') AS AvgAmount
FROM Vendors, Invoices
WHERE VENDORS.VendorID = Invoices.VendorID
GROUP BY VendorState, VendorCity
ORDER BY VendorState, VendorCity;

-- Question 6
Print '*** Question 6 ***';
print '';

SELECT InvoiceDate AS "Invoice Date", COUNT(InvoiceTotal) AS "Invoice Qty"
	, SUM(InvoiceTotal) AS "Invoice Sum"
FROM Invoices
WHERE InvoiceDate BETWEEN '2019-12-1' AND '2019-12-31'
GROUP BY InvoiceDate
HAVING COUNT(InvoiceTotal) > 2 AND SUM(InvoiceTotal) > 1000
ORDER BY InvoiceDate DESC
;

-- Question 7
Print '*** Question 7 ***';
print '';

SELECT InvoiceNumber AS "Invoice Number", InvoiceDate AS "Invoice Date"
	, InvoiceTotal AS "Invoice Total"
FROM Invoices
WHERE VendorID = 
	(SELECT VendorID 
	FROM Vendors 
	WHERE VendorState='TX')
ORDER BY InvoiceDate DESC
;

-- Question 8
Print '*** Question 8 ***';
print '';

SELECT INV.VendorID, INV.InvoiceNumber, INV.InvoiceTotal
FROM Invoices INV
WHERE INV.InvoiceTotal > (SELECT AVG(InvoiceTotal)
	FROM Invoices WHERE VendorID = INV.VendorID) 
	AND INV.InvoiceTotal > 1000
ORDER BY INV.VendorID, INV.InvoiceTotal DESC
;

-- Question 9
Print '*** Question 9 ***';
print '';

SELECT DISTINCT VendorName, 
	(SELECT MAX(I.InvoiceDate) 
	FROM Invoices I 
	WHERE I.VendorID = V.VendorID) AS LatestInv
FROM Vendors V
WHERE V.VendorName LIKE 'C%'
ORDER BY LatestInv
;

