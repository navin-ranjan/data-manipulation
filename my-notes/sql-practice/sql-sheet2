table create
-----------------------------------

CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    UserName VARCHAR(50),
    Email VARCHAR(100),
    DateOfBirth DATE,
    RegistrationDate DATE,
    Country VARCHAR(50),
    IsActive BOOLEAN
);

INSERT INTO Users (UserID, UserName, Email, DateOfBirth, RegistrationDate, Country, IsActive) VALUES
(1, 'john_doe', 'john.doe@example.com', '1990-01-15', '2022-03-10', 'United States', TRUE),
(2, 'jane_smith', 'jane.smith@example.com', '1985-05-20', '2022-01-25', 'Canada', TRUE),
(3, 'peter_pan', 'peter.pan@example.com', '2000-07-10', '2022-04-01', 'United Kingdom', TRUE),
(4, 'lisa_white', 'lisa.white@example.com', '1995-09-12', '2021-12-15', 'Australia', FALSE),
(5, 'mike_brown', 'mike.brown@example.com', '1988-03-30', '2020-10-11', 'Germany', TRUE),
(6, 'anna_lee', 'anna.lee@example.com', '1992-11-01', '2021-06-25', 'France', TRUE),
(7, 'tom_cruz', 'tom.cruz@example.com', '1994-12-25', '2020-08-10', 'Brazil', FALSE),
(8, 'kate_green', 'kate.green@example.com', '1987-02-17', '2023-02-01', 'India', TRUE),
(9, 'paul_martin', 'paul.martin@example.com', '1991-04-05', '2023-03-15', 'Japan', TRUE),
(10, 'mary_black', 'mary.black@example.com', '1989-06-19', '2023-01-09', 'Mexico', TRUE),
(11, 'kevin_gray', 'kevin.gray@example.com', '1993-10-14', '2021-03-21', 'Italy', FALSE),
(12, 'susan_clark', 'susan.clark@example.com', '1982-08-08', '2019-11-11', 'Spain', TRUE),
(13, 'david_hall', 'david.hall@example.com', '1997-05-24', '2022-12-17', 'South Korea', TRUE),
(14, 'nancy_richards', 'nancy.richards@example.com', '1980-03-11', '2020-05-05', 'Russia', FALSE),
(15, 'george_bell', 'george.bell@example.com', '1999-01-29', '2023-07-22', 'China', TRUE),
(16, 'emily_turner', 'emily.turner@example.com', '1996-06-15', '2023-08-03', 'India', TRUE),
(17, 'henry_hill', 'henry.hill@example.com', '1990-02-28', '2023-09-12', 'United Kingdom', TRUE),
(18, 'olivia_harris', 'olivia.harris@example.com', '1994-12-14', '2022-07-19', 'Australia', TRUE),
(19, 'jack_miller', 'jack.miller@example.com', '1998-09-01', '2022-11-13', 'United States', FALSE),
(20, 'sophia_adams', 'sophia.adams@example.com', '1992-04-22', '2023-03-03', 'Canada', TRUE),
(21, 'li_wang', 'li.wang@example.com', '2001-11-18', '2023-04-12', 'China', TRUE),
(22, 'ethan_james', 'ethan.james@example.com', '1991-10-09', '2021-01-22', 'India', FALSE),
(23, 'mia_taylor', 'mia.taylor@example.com', '1989-05-05', '2020-02-28', 'United States', TRUE),
(24, 'noah_wilson', 'noah.wilson@example.com', '1984-03-15', '2018-09-15', 'Germany', TRUE),
(25, 'chloe_thomas', 'chloe.thomas@example.com', '1995-12-12', '2022-10-20', 'France', TRUE),
(26, 'lucas_moore', 'lucas.moore@example.com', '1990-11-01', '2021-12-30', 'Japan', FALSE),
(27, 'ava_taylor', 'ava.taylor@example.com', '1986-07-04', '2019-03-18', 'Italy', TRUE),
(28, 'logan_morgan', 'logan.morgan@example.com', '1993-01-21', '2020-01-10', 'Brazil', FALSE),
(29, 'emma_evans', 'emma.evans@example.com', '1998-02-12', '2023-06-05', 'Australia', TRUE),
(30, 'william_johnson', 'william.johnson@example.com', '1981-09-27', '2019-05-25', 'United Kingdom', TRUE);


============================================ question ==========================================================

Step 3: Questions Based on Dataset
Here are 60+ SQL practice questions based on the dataset.

Simple SELECT Queries

-- Retrieve all user data.
-- Display UserName and Email of all users.
-- Retrieve users from the United States.
-- Display users who registered in 2023.
-- Show all active users.

Filtering with WHERE
-- List users born after 1990.
-- Find users who registered between 2022-01-01 and 2022-12-31.
-- Retrieve users whose Email contains "example.com".
-- Show inactive users (IsActive = FALSE).
-- Retrieve users from either India or Australia.

Aggregate Functions

-- Count the total number of users.
-- Find the number of active users.
-- Calculate the average age of users.
-- Find the earliest registration date.
-- Retrieve the number of users per country.

Sorting

-- Retrieve all users sorted by UserName alphabetically.
-- Display users sorted by RegistrationDate in descending order.
-- Show active users sorted by DateOfBirth.

==============================================================================================================
CREATE TABLE Posts (
    PostID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    PostContent TEXT,
    PostDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Retrieve all posts with the UserName of the poster.
-- List users who have not posted anything (users without posts).

Subqueries

-- Find users who registered on the same date as any other user.
-- Retrieve users with the most recent registration date.
-- Show users whose UserName length is greater than the average length.

Updates

-- Mark all users from Brazil as active.
-- Change the Email domain for all users to newdomain.com.

Inserts

-- Insert a new user into the Users table.
-- Add a new post for an existing user.

Deletions

-- Delete all inactive users.
-- Remove users who registered before 2020-01-01.

Advanced Queries

-- Retrieve the second oldest user based on DateOfBirth.
-- Show users who registered exactly six months after their birthday.
-- List users who share the same Country as the most active users.

GROUP BY and HAVING

-- Group users by Country and show the count of users in each country.
-- List countries with more than 5 users.

Functions

-- Extract the year from DateOfBirth for all users.
-- Show the month name of the RegistrationDate for each user.

Case Statements

-- Create a new column displaying "Young" for users born after 1990 and "Old" otherwise.
-- Display "Active User" or "Inactive User" based on the IsActive column.

Window Functions

-- Rank users based on their RegistrationDate.
-- Calculate the cumulative count of registrations by Country.

Data Manipulation Scenarios

-- Merge two user accounts into one.
-- Archive users inactive for more than 2 years.

Performance Testing

-- Write a query to find users with unique Email addresses.
-- Optimize a query for retrieving the 10 most recent registrations.


==================================================================================================

CREATE TABLE Posts (
    PostID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    PostContent TEXT,
    PostDate DATE,
    Likes INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

INSERT INTO Posts (PostID, UserID, PostContent, PostDate, Likes) VALUES
(1, 1, 'Hello World!', '2023-01-10', 100),
(2, 2, 'My first post!', '2023-02-15', 150),
(3, 1, 'Learning SQL is fun!', '2023-03-20', 200),
(4, 3, 'Just joined the platform.', '2023-04-25', 50),
(5, 4, 'Looking for SQL resources.', '2023-05-30', 30),
(6, 2, 'Exploring new features.', '2023-06-10', 75),
(7, 5, 'Sharing my journey.', '2023-07-01', 120),
(8, 6, 'Best practices for coding.', '2023-08-05', 180),
(9, 7, 'Enjoying this community!', '2023-09-15', 90),
(10, 8, 'Any good book recommendations?', '2023-10-20', 60);


CREATE TABLE Comments (
    CommentID INT PRIMARY KEY AUTO_INCREMENT,
    PostID INT,
    UserID INT,
    CommentContent TEXT,
    CommentDate DATE,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

INSERT INTO Comments (CommentID, PostID, UserID, CommentContent, CommentDate) VALUES
(1, 1, 2, 'Great post!', '2023-01-11'),
(2, 1, 3, 'Thanks for sharing.', '2023-01-12'),
(3, 2, 1, 'Congratulations!', '2023-02-16'),
(4, 3, 5, 'Very informative.', '2023-03-21'),
(5, 4, 6, 'Welcome aboard!', '2023-04-26'),
(6, 5, 7, 'Good luck!', '2023-05-31'),
(7, 6, 8, 'Interesting post.', '2023-06-11'),
(8, 7, 2, 'Thanks for the insights.', '2023-07-02'),
(9, 8, 4, 'Can you share more details?', '2023-08-06'),
(10, 9, 3, 'Amazing community indeed.', '2023-09-16');


============================================================================================

Basic SELECT Queries

-- Retrieve all posts with their PostContent and Likes.
-- List all comments made on a specific post (PostID = 1).
-- Display all posts made by a user (UserID = 2).
-- Show all comments made after 2023-06-01.

Join Queries

-- Retrieve posts along with the UserName of the poster.
-- Show all comments with the corresponding PostContent.
-- List all posts along with the number of comments they received.
-- Retrieve posts that received comments from the same user who made the post.

Filtering with WHERE

-- Find posts that received more than 100 likes.
-- Retrieve comments made by users from India.

Aggregate Functions

-- Count the total number of posts.
-- Calculate the average number of likes per post.
-- Find the maximum number of comments on a single post.
-- Display the total number of comments made by each user.

GROUP BY and HAVING

-- Group posts by UserID and show the total likes received by each user.
-- Find users who made more than 3 posts.
-- List all posts grouped by PostDate and count the number of posts on each date.

Subqueries

-- Find posts that have received more likes than the average likes of all posts.
-- Retrieve the UserName of users who have commented on their own posts.
-- Show posts that have not received any comments.

Advanced Scenarios

-- Retrieve the most liked post and the user who made it.
-- List users who have made comments but not posted anything.
-- Identify users who have commented on all of their own posts.

Data Manipulation

-- Update all posts by a specific user (UserID = 3) to increment their likes by 10.
-- Delete comments made before 2023-01-01.

Window Functions

-- Rank posts by the number of likes.
-- Show the cumulative number of comments received by each post, ordered by PostDate.

Performance Tuning

-- Optimize a query to retrieve the top 5 most liked posts.
-- Write a query to efficiently find the user with the most comments.