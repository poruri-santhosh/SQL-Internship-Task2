-- Task 2: Data Insertion and Handling NULLs
-- Author: [Your Name]
-- Description: This script demonstrates INSERT, UPDATE, DELETE, and handling NULL/default values

-- Drop table if it already exists (optional for testing)
DROP TABLE IF EXISTS Books;

-- Step 1: Create a sample table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100),
    PublishedYear INT DEFAULT 2024,
    Genre VARCHAR(50),
    Rating DECIMAL(3,1) NULL
);

-- Step 2: INSERT statements
-- 1. Insert full data
INSERT INTO Books (BookID, Title, Author, PublishedYear, Genre, Rating)
VALUES (1, 'The Alchemist', 'Paulo Coelho', 1988, 'Fiction', 4.5);

-- 2. Insert with default PublishedYear and NULL Author
INSERT INTO Books (BookID, Title, Author, Genre)
VALUES (2, 'Unknown Book', NULL, 'Mystery');

-- 3. Insert with NULL Rating
INSERT INTO Books (BookID, Title, Author, PublishedYear, Genre, Rating)
VALUES (3, 'Zero to One', 'Peter Thiel', 2014, 'Business', NULL);

-- 4. Insert with only mandatory fields
INSERT INTO Books (BookID, Title)
VALUES (4, 'Atomic Habits');

-- 5. Insert using DEFAULT for PublishedYear
INSERT INTO Books (BookID, Title, Author, PublishedYear, Genre, Rating)
VALUES (5, 'The Lean Startup', 'Eric Ries', DEFAULT, 'Business', 4.2);

-- Step 3: UPDATE statements
-- 1. Update rating for a book
UPDATE Books
SET Rating = 4.0
WHERE BookID = 2;

-- 2. Update Author where it's NULL
UPDATE Books
SET Author = 'Unknown'
WHERE Author IS NULL;

-- 3. Update Genre for a specific book
UPDATE Books
SET Genre = 'Self-help'
WHERE Title = 'Atomic Habits';

-- Step 4: DELETE statements
-- 1. Delete a book by title
DELETE FROM Books
WHERE Title = 'Zero to One';

-- 2. Delete books with NULL rating
DELETE FROM Books
WHERE Rating IS NULL;

-- Step 5: SELECT all to check final data
SELECT * FROM Books;
