# Use_AP_Part-2_SQL

This README.md file provides a summary and explanation of the SQL script `ex3_RG.sql`, including its purpose, revision history, contents, and usage instructions.

## Revision History

The `ex3_RG.sql` script was created by Rutvik Gandhi for Section 3 on March 20, 2023. It was subsequently modified by the same author on the same date.

## Script Overview

The script contains SQL queries designed to retrieve specific information from the AP (Accounts Payable) database. Each question corresponds to a different data retrieval task and utilizes various SQL clauses and functions.

## Contents of the Script

The script consists of the following questions and corresponding SQL queries:

### Question 1
Retrieve the InvoiceNumber and VendorName for invoices associated with the vendor 'Compuserve'.

### Question 2
Retrieve the InvoiceNumber, VendorID, VendorName, InvoiceDueDate, and BalanceDue (calculated as InvoiceTotal - PaymentTotal - CreditTotal) for invoices where the BalanceDue is greater than $500, ordered by BalanceDue.

### Question 3
Retrieve the VendorID, VendorName, InvoiceNumber, and InvoiceTotal for vendors whose names start with 'in', ordered by VendorName in descending order.

### Question 4
Calculate the lowest and highest invoice totals from invoices dated after December 31, 2018.

### Question 5
Retrieve the VendorState, VendorCity, number of invoices (InvoiceQty), and average invoice amount (AvgAmount) for each vendor, ordered by VendorState and VendorCity.

### Question 6
Retrieve the InvoiceDate, number of invoices (InvoiceQty), and total invoice amount (Invoice Sum) for invoices dated between December 1, 2019, and December 31, 2019, where the number of invoices is greater than 2 and the total invoice amount is greater than $1000, ordered by InvoiceDate in descending order.

### Question 7
Retrieve the InvoiceNumber, InvoiceDate, and InvoiceTotal for invoices associated with vendors located in Texas (TX), ordered by InvoiceDate in descending order.

### Question 8
Retrieve the VendorID, InvoiceNumber, and InvoiceTotal for invoices where the invoice total is greater than both the average invoice total for the vendor and $1000, ordered by VendorID and InvoiceTotal in descending order.

### Question 9
Retrieve the distinct VendorName and the latest invoice date (LatestInv) for vendors whose names start with 'C', ordered by LatestInv.

## How to Use the Script

1. Open your preferred SQL client or environment.

2. Load the AP database.

3. Copy and paste the SQL queries from `ex3_RG.sql` into your SQL client.

4. Execute the queries one by one to retrieve the desired information from the database.

## Contributors

- Rutvik Gandhi

## License

This script is provided under the MIT License. See the [LICENSE](LICENSE) file for details.
