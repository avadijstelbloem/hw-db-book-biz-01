-- 7.1 Authors per Book
USE `BookPublishing`;
SELECT b.Name AS BookName, GROUP_CONCAT(a.Name SEPARATOR ', ') AS "AuthorName(s)", COUNT(*) AS `# of Authors`
FROM BookAuthors ba
INNER JOIN Books b
ON b.BookID = ba.BookID
INNER JOIN Authors a
ON a.AuthorID = ba.AuthorID
GROUP BY b.Name
ORDER BY b.BookID


-- 7.2 Books per Author
USE `BookPublishing`;
SELECT a.Name AS AuthorName, GROUP_CONCAT(b.Name SEPARATOR ', ') AS "BookName(s)", COUNT(*) AS `Total # of Books`
FROM BookAuthors ba
INNER JOIN Authors a
ON a.AuthorID = ba.AuthorID
INNER JOIN Books b
ON b.BookID=ba.BookID
GROUP BY ba.AuthorID


-- 7.3 Author Royalties on a book
USE BookPublishing;
SELECT a.Name AS AuthorName, b.Name AS BookName, ba.Royalty AS "Royalty $"
FROM BookAuthors ba
INNER JOIN Authors a
ON a.AuthorID = ba.AuthorID
INNER JOIN Books b
ON b.BookID = ba.BookID
ORDER BY b.Name

-- 7.4 Book Royalties per Author
USE BookPublishing;
SELECT a.Name AS AuthorName,  SUM(ba.Royalty) AS "Total Royalty $"
FROM BookAuthors ba
INNER JOIN Authors a
ON a.AuthorID = ba.AuthorID
GROUP BY a.Name


-- 7.5 Books per Genre
USE `BookPublishing`;
SELECT g.Name AS Genre, COUNT(*) AS BooksPerGenre, GROUP_CONCAT(b.Name SEPARATOR ', ') AS BookNames
FROM  Genres g, Books b
WHERE g.GenreID = b.GenreID
GROUP BY g.GenreID
ORDER BY b.GenreID;


-- 7.6 Books published by a publisher
USE `BookPublishing`;
SELECT p.Name AS Publisher, GROUP_CONCAT(b.Name SEPARATOR ', ') AS "BookNames", COUNT(*) AS BooksPerPublisher
FROM  Publishers p, Books b
WHERE p.PublisherID = b.PublisherID
GROUP BY p.PublisherID
ORDER BY b.PublisherID;

-- 7.7 Editors per Book
USE `BookPublishing`;
SELECT b.Name AS BookName, GROUP_CONCAT(e.Name SEPARATOR ', ') AS "EditorName(s)", COUNT(*) AS `# of Editors`
FROM BookEditors be
INNER JOIN Books b
ON b.BookID = be.BookID
INNER JOIN Editors e
ON e.EditorID = be.EditorID
GROUP BY b.Name
ORDER BY b.BookID

-- 7.8 Books per Editor
USE `BookPublishing`;
SELECT e.Name AS EditorName, GROUP_CONCAT(b.Name SEPARATOR ', ') AS "BookName(s)", COUNT(*) AS `Total # of Books`
FROM BookEditors be
INNER JOIN Editors e
ON e.EditorID = be.EditorID
INNER JOIN Books b
ON b.BookID=be.BookID
GROUP BY be.EditorID

-- 7.9 Books in an order
USE `BookPublishing`;
SELECT OrderID, COUNT(*) AS "# of books"
FROM OrderDetails
GROUP BY OrderID
ORDER BY OrderID

-- 7.10 Orders for a book
USE BookPublishing;
SELECT b.Name, GROUp_CONCAT(od.OrderID SEPARATOR ', ') AS "OrderID(s)",COUNT(*) AS TotalOrdersForBook
FROM Books b
INNER JOIN OrderDetails od
ON b.BookID = od.BookID
GROUP BY b.Name

-- 7.11 Customer orders
USE `BookPublishing`;
SELECT c.CustomerID, o.OrderID, c.Name AS CustomerName, GROUP_CONCAT(b.Name SEPARATOR ', ') AS `BookName`
FROM Orders o
INNER JOIN Customers c
ON o.CustomerID = c.CustomerID
INNER JOIN OrderDetails od
ON o.OrderID = od.OrderID
INNER JOIN Books b
ON od.BookID = b.BookID
GROUP BY c.CustomerID
ORDER BY c.CustomerID

-- 7.12 Orders per customer
USE `BookPublishing`;
SELECT c.Name AS Customer, COUNT(*) AS OrdersPerCustomer
FROM  Customers c, Orders o
WHERE c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY o.CustomerID;

