-- PART 1
-- 1:
SELECT BillingCountry, COUNT(InvoiceId) CountInvoice
FROM Invoice
GROUP BY BillingCountry
ORDER BY CountInvoice;

-- 2:
SELECT BillingCity, SUM(Total) InvoiceTotalSum
FROM Invoice
GROUP BY BillingCity
ORDER BY InvoiceTotalSum
LIMIT 5;

-- 3:
/* SELECT c.FirstName, c.LastName,
	   il.InvoiceId, SUM(i.Total) InvoiceTotalSum
FROM Customer c
JOIN Invoice i
ON c.CustomerId = i.CustomerId
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId; */

-- 4:
SELECT c.Email, c.LastName, c.FirstName, g.Name GName
FROM Customer c 
JOIN Invoice i 
ON c.CustomerId = i.CustomerId 
JOIN InvoiceLine il 
ON i.InvoiceId = il.InvoiceId 
JOIN Track t 
ON il.TrackId = t.TrackId 
JOIN Genre g 
ON t.GenreId = g.GenreId 
WHERE g.Name = 'Rock' AND c.Email LIKE 's%';

-- 5:


-- PART 2
-- 1:

-- 2:
SELECT a.Title, MAX(i.total) rtotal
FROM Album a
JOIN Track t
ON a.AlbumId = t.AlbumId
JOIN InvoiceLine il
ON t.Trackid = il.TrackId
JOIN Invoice i
ON il.InvoiceId = i.InvoiceId
GROUP BY a.Title
ORDER BY rtotal DESC
LIMIT 1;

-- 3:

-- 4:
SELECT e.LastName, e.FirstName, COUNT(c.SupportRepId) CountSupport
FROM Employee e
JOIN Customer c
ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId
ORDER BY CountSupport;

-- 5:
SELECT t.Name, COUNT(pt.TrackId) CountTrackId, SUM(i.Total) rtotal
FROM PlaylistTrack pt
JOIN Track t
ON pt.TrackId = t.TrackId 
JOIN InvoiceLine il
ON t.TrackId = il.TrackId 
JOIN Invoice i
ON il.InvoiceId = i.InvoiceId
GROUP BY t.TrackId
ORDER BY CountTrackId DESC;

-- 6:

-- 7:


