-- Database creation and propagaion --
	CREATE DATABASE if not exists ELearningDB;
    USE ELearningDB;
    
    CREATE TABLE learners (
    learner_id int primary key auto_increment,
    full_name varchar (100),
    country varchar (50)
    );
    
    CREATE TABLE courses (
    course_id varchar (10) primary key,
    course_name varchar (100),
    category varchar (100));
    
    CREATE TABLE purchase(
     id int auto_increment primary key,
    learner_id INT,
    course_id varchar (10),
    quantity INT,
    unit_price DECIMAL(10,2),
    purchase_date DATE,
    CONSTRAINT fk_learner FOREIGN KEY (learner_id) REFERENCES learners(learner_id),
    CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(course_id)
    );
        
    INSERT INTO learners (full_name, country) VALUES
('Abgail Robinson', 'Germany'), ('Adelle Velasco', 'Mexico'), ('Agustin Yam', 'Mexico'),
('Alaric Sterling', 'UK'), ('Alex Vondra', 'Australia'), ('Amelia Martin', 'Canada'),
('Anna Schmidt', 'Germany'), ('Arcadia Galanis', 'France'), ('Aziel Roy', 'Canada'),
('Beatrix Fallow', 'UK'), ('Benjamin Mueller', 'Germany'), ('Bernardo Deloera', 'Mexico'),
('Bowie Tanner', 'USA'), ('Charlotte Anderson', 'Australia'), ('Charlotte Klein', 'Germany'),
('Ciaran Egon', 'Australia'), ('Citlalli Andazola', 'Mexico'), ('Consuelo Zarate', 'Mexico'),
('Crosby Vance', 'USA'), ('Deepak Malhotra', 'Australia'), ('Diego Torres', 'Mexico'),
('Durga Kumar', 'India'), ('Emma Brown', 'UK'), ('Emma Cote', 'Canada'),
('Emma Schneider', 'Germany'), ('Esmeralda Dorame', 'Mexico'), ('Evelyn Garcia', 'Mexico'),
('Felix Hoffmann', 'Germany'), ('Guadalupe Rodriguez', 'Mexico'), ('Hawthorn Dubois', 'France'),
('Hema Parichelvan', 'India'), ('Henry Johnson', 'Australia'), ('Isla Jones', 'Australia'),
('Jade Robert', 'France'), ('Jean Richard', 'France'), ('Jean Tremblay', 'Canada'),
('Jeeva Hari', 'India'), ('Jolanda Bouchier', 'France'), ('Juan Martinez Gonzalez', 'Mexico'),
('Juno Landry', 'Canada'), ('Karthik Muralidharan', 'India'), ('Leon Weber', 'Germany'),
('Liam Smith', 'USA'), ('Louise Laurent', 'France'), ('Lucas Lee', 'Canada'),
('Lucia Cruz Morales', 'Mexico'), ('Lukas Muller', 'Germany'), ('Maria Garcia Martinez', 'Mexico'),
('Mary Smith', 'USA'), ('Maximillan Richter', 'Germany'), ('Mia White', 'Australia'),
('Mithila Shree,India', 'India'), ('Nash Holden', 'USA'), ('Nathalie Durand', 'France'),
('Nika Boucher', 'Canada'), ('Noah Roy', 'Canada'), ('Noah Wilson', 'UK'),
('Noah Wilson', 'Australia'), ('Oliver Smith', 'Australia'), ('Ottilie Vance', 'UK'),
('Paloma Noh', 'Mexico'), ('Panneer Selvam', 'India'), ('Paul Hoffmann', 'Germany'),
('Pierre Simon', 'France'), ('Poorna Chandran', 'India'), ('Porfirio Tun', 'Mexico'),
('Quinn Ratliff', 'UK'), ('Radha Koushik', 'India'), ('Ravi Sankar', 'India'),
('Robert Evans', 'USA'), ('Roseline Tremblay', 'Canada'), ('Sakthi Priya', 'India'),
('Sathya Moorthy', 'India'), ('Sathya Moorthy', 'India'), ('Seethai Lakshmi', 'India'),
('Shivani Iyer', 'India'), ('Sivakumar Perumal', 'India'), ('Sofia Mueller', 'Germany'),
('Sonia Sanchez', 'Mexico'), ('Sundar Pichai', 'India'), ('Thangam Thennarasu', 'India'),
('Udhaya Nidhi', 'India'), ('Vetri Selvan', 'India'), ('Vishwa Nathan', 'India'),
('Ximena Ruiz', 'Mexico'), ('Saroja Pooranachandiran', 'India');
 
    INSERT INTO courses (course_id, course_name, category) 
    VALUES ('DA-2025','Data Science Essentials','Data Science'),('MY-2025','MySQL for Analytics','Data Science'),
    ('TA-2025','Tableau/Power BI','Data Science'), ('GR-2025','Graphic Design Basics','Design'), 
    ('UX-2025','UX/UI & Digital Design','Design'), ('DI-2025','Digital Marketing 101','Marketing'), 
    ('MA-2025','Marketing Analytics Foundation','Marketing'), ('PY-2025','Python Mastery','Programming'), 
    ('JA-2025','Java Development','Programming');


	INSERT INTO purchase (learner_id, course_id, quantity, unit_price, purchase_date) VALUES
(19,'DA-2025', 1, 199.99, '2025-11-01'), (31, 'GR-2025', 1, 499.99, '2025-11-01'),
(31, 'UX-2025', 1, 599.99, '2025-11-01'), (52, 'UX-2025', 1, 599.99, '2025-11-01'),
(41, 'UX-2025', 1, 599.99, '2025-11-02'), (32, 'UX-2025', 1, 599.99, '2025-11-03'),
(32, 'GR-2025', 1, 499.99, '2025-11-03'), (55, 'PY-2025', 1, 39.99, '2025-11-03'),
(4, 'GR-2025', 1, 499.99, '2025-11-05'), (4, 'UX-2025', 1, 599.99, '2025-11-05'),
(5, 'UX-2025', 1, 599.99, '2025-11-05'), (34, 'MA-2025', 1, 49.99, '2025-11-05'),
(80, 'JA-2025', 1, 599.99, '2025-11-05'), (14, 'UX-2025', 1, 599.99, '2025-11-08'),
(14, 'GR-2025', 1, 499.99, '2025-11-08'), (47, 'MY-2025', 1, 69.99, '2025-11-08'),
(47, 'DA-2025', 1, 199.99, '2025-11-08'), (51, 'GR-2025', 1, 499.99, '2025-11-08'),
(51, 'UX-2025', 1, 599.99, '2025-11-08'), (68, 'TA-2025', 1, 79.99, '2025-11-08'),
(21, 'TA-2025', 1, 79.99, '2025-11-10'), (21, 'MY-2025', 1, 69.99, '2025-11-10'),
(21, 'DA-2025', 1, 199.99, '2025-11-10'), (60, 'GR-2025', 1, 499.99, '2025-11-10'),
(73, 'PY-2025', 1, 39.99, '2025-11-10'), (25, 'MA-2025', 1, 49.99, '2025-11-11'),
(39, 'TA-2025', 1, 79.99, '2025-11-11'), (39, 'DA-2025', 1, 199.99, '2025-11-11'),
(39, 'TA-2025', 1, 79.99, '2025-11-11'), (39, 'PY-2025', 1, 39.99, '2025-11-11'),
(22, 'GR-2025', 1, 499.99, '2025-11-18'), (44, 'PY-2025', 1, 39.99, '2025-11-22'),
(81, 'GR-2025', 1, 499.99, '2025-11-22'), (74, 'JA-2025', 1, 599.99, '2025-11-28'),
(65, 'JA-2025', 1, 599.99, '2025-11-30'), (65, 'PY-2025', 1, 39.99, '2025-11-30'),
(30, 'TA-2025', 1, 79.99, '2025-12-01'), (30, 'MY-2025', 1, 69.99, '2025-12-01'),
(82, 'UX-2025', 1, 599.99, '2025-12-01'), (82, 'GR-2025', 1, 499.99, '2025-12-01'),
(20, 'MY-2025', 1, 69.99, '2025-12-03'), (20, 'DA-2025', 1, 199.99, '2025-12-03'),
(20, 'TA-2025', 1, 79.99, '2025-12-03'), (62, 'DI-2025', 1, 199.99, '2025-12-04'),
(46, 'DA-2025', 1, 199.99, '2025-12-05'), (46, 'MY-2025', 1, 69.99, '2025-12-05'),
(46, 'TA-2025', 1, 79.99, '2025-12-05'), (6, 'DI-2025', 1, 199.99, '2025-12-12'),
(6, 'MA-2025', 1, 49.99, '2025-12-12'), (7, 'MA-2025', 1, 49.99, '2025-12-12'),
(15, 'DI-2025', 1, 199.99, '2025-12-18'), (57, 'DA-2025', 1, 199.99, '2025-12-18'),
(57, 'MY-2025', 1, 69.99, '2025-12-18'), (23, 'UX-2025', 1, 599.99, '2025-12-20'),
(56, 'JA-2025', 1, 599.99, '2025-12-20'), (56, 'PY-2025', 1, 39.99, '2025-12-20'),
(27, 'JA-2025', 1, 599.99, '2025-12-22'), (53, 'DI-2025', 1, 199.99, '2025-12-22'),
(53, 'MA-2025', 1, 49.99, '2025-12-22'), (24, 'DI-2025', 1, 199.99, '2025-12-24'),
(69, 'GR-2025', 1, 499.99, '2025-12-28'), (77, 'DI-2025', 1, 199.99, '2025-12-28'),
(77, 'MA-2025', 1, 49.99, '2025-12-28'), (59, 'TA-2025', 1, 79.99, '2025-12-30'),
(36, 'JA-2025', 1, 599.99, '2025-12-31'), (1, 'DA-2025', 1, 199.99, '2026-01-02'),
(1, 'MY-2025', 1, 69.99, '2026-01-02'), (1, 'TA-2025', 1, 79.99, '2026-01-02'),
(49, 'GR-2025', 1, 499.99, '2026-01-06'), (49, 'UX-2025', 1, 599.99, '2026-01-06'),
(71, 'DI-2025', 1, 199.99, '2026-01-06'), (7, 'DI-2025', 1, 199.99, '2026-01-12'),
(57, 'TA-2025', 1, 79.99, '2026-01-12'), (57, 'PY-2025', 1, 39.99, '2026-01-12'),
(33, 'DI-2025', 1, 199.99, '2026-01-14'), (33, 'MA-2025', 1, 49.99, '2026-01-14'),
(84, 'MA-2025', 1, 49.99, '2026-01-16'), (50, 'UX-2025', 1, 599.99, '2026-01-20'),
(54, 'MA-2025', 1, 49.99, '2026-01-24'), (75, 'GR-2025', 1, 499.99, '2026-01-24'),
(75, 'UX-2025', 1, 599.99, '2026-01-24'), (16, 'MA-2025', 1, 49.99, '2026-01-26'),
(86, 'JA-2025', 1, 599.99, '2026-01-26'), (86, 'PY-2025', 1, 39.99, '2026-01-26'),
(43, 'MA-2025', 1, 49.99, '2026-01-28'), (43, 'DI-2025', 1, 199.99, '2026-01-28'),
(61, 'UX-2025', 1, 599.99, '2026-01-30'), (76, 'UX-2025', 1, 599.99, '2026-01-30'),
(2, 'MY-2025', 1, 69.99, '2026-01-31'), (2, 'DA-2025', 1, 199.99, '2026-01-31'),
(2, 'TA-2025', 1, 79.99, '2026-01-31'), (3, 'TA-2025', 1, 79.99, '2026-02-02'),
(2, 'PY-2025', 1, 39.99, '2026-02-05'), (8, 'PY-2025', 1, 39.99, '2026-02-12'),
(72, 'MA-2025', 1, 49.99, '2026-02-14'), (28, 'DA-2025', 1, 199.99, '2026-02-16'),
(28, 'MY-2025', 1, 69.99, '2026-02-16'), (28, 'TA-2025', 1, 79.99, '2026-02-16'),
(17, 'PY-2025', 1, 39.99, '2026-02-18'), (17, 'JA-2025', 1, 599.99, '2026-02-18'),
(35, 'PY-2025', 1, 39.99, '2026-02-22'), (35, 'JA-2025', 1, 599.99, '2026-02-22'),
(58, 'MY-2025', 1, 69.99, '2026-02-27'), (66, 'DA-2025', 1, 199.99, '2026-02-27'),
(10, 'DA-2025', 1, 199.99, '2026-02-28'), (10, 'MY-2025', 1, 69.99, '2026-02-28'),
(10, 'TA-2025', 1, 79.99, '2026-02-28'), (11, 'MY-2025', 1, 69.99, '2026-02-28'),
(11, 'DA-2025', 1, 199.99, '2026-02-28'), (12, 'TA-2025', 1, 79.99, '2026-03-01'),
(13, 'GR-2025', 1, 499.99, '2026-03-01'), (3, 'DA-2025', 1, 199.99, '2026-03-03'),
(3, 'MY-2025', 1, 69.99, '2026-03-03'), (9, 'JA-2025', 1, 599.99, '2026-03-03'),
(26, 'PY-2025', 1, 39.99, '2026-03-04'), (28, 'PY-2025', 1, 39.99, '2026-03-04'),
(20, 'PY-2025', 1, 39.99, '2026-03-08'), (67, 'MY-2025', 1, 69.99, '2026-03-08'),
(70, 'UX-2025', 1, 599.99, '2026-03-17'), (70, 'GR-2025', 1, 499.99, '2026-03-17'),
(40, 'GR-2025', 1, 499.99, '2026-03-18'), (48, 'TA-2025', 1, 79.99, '2026-03-18'),
(83, 'DI-2025', 1, 199.99, '2026-03-18'), (18, 'JA-2025', 1, 599.99, '2026-03-19'),
(29, 'MY-2025', 1, 69.99, '2026-03-20'), (29, 'TA-2025', 1, 79.99, '2026-03-20'),
(85, 'PY-2025', 1, 39.99, '2026-03-20'), (42, 'DI-2025', 1, 199.99, '2026-03-24'),
(78, 'MA-2025', 1, 49.99, '2026-03-24'), (38, 'MY-2025', 1, 69.99, '2026-03-28'),
(64, 'PY-2025', 1, 39.99, '2026-03-28'), (37, 'DA-2025', 1, 199.99, '2026-03-31'),
(45, 'JA-2025', 1, 599.99, '2026-03-31'), (63, 'MA-2025', 1, 49.99, '2026-03-31'),
(71, 'MA-2025', 1, 49.99, '2026-03-31'), (79, 'PY-2025', 1, 39.99, '2026-03-31');

SELECT 
CONCAT('PUR-', LPAD(id, 5, '0')) AS purchase_id,
learner_id, 
course_id, 
quantity,
unit_price,
purchase_date
FROM purchase;


-- Data Exploration using Joins --
SELECT
l.full_name as learner_name,
c.course_name,
c.category,
p.quantity,
FORMAT(p.unit_price * p.quantity, 2) as total_amount,
p.purchase_date
FROM purchase p
Inner Join learners l on p.learner_id = l.learner_id
Inner Join courses c on p.course_id = c.course_id
ORDER BY p.purchase_date DESC;

-- Analyses --

-- Total Spending by Learner & Country --
SELECT
l.full_name,
l.country,
FORMAT (sum(p.quantity * p.unit_price), 2) as total_spent
FROM learners l
JOIN purchase p on l.learner_id = p.learner_id
GROUP BY l.learner_id, l.full_name, l.country
ORDER BY sum(p.quantity * p.unit_price) DESC;

-- Total Revenue -- 
SELECT sum(quantity*unit_price) as Grand_Total_Revenue
FROM purchase;

-- Total Revenue per Month --
SELECT 
YEAR(purchase_date) AS Year,
MONTHNAME(purchase_date) AS Month,
SUM(quantity * unit_price) AS Monthly_Revenue,
COUNT(id) AS Total_Transactions
FROM purchase
GROUP BY YEAR(purchase_date), MONTH(purchase_date), MONTHNAME(purchase_date)
ORDER BY YEAR(purchase_date), MONTH(purchase_date);

-- Total Revenue per course --
SELECT
c.course_name,
c.category,
sum(p.quantity * p.unit_price) as Total_Revenue,
SUM(p.quantity) as total_quantity_sold
FROM courses c
JOIN purchase p on c.course_id = p.course_id
GROUP BY c.course_id, c.course_name, c.category
ORDER BY Total_Revenue DESC;

-- TOP 3 Most Purchased Course --
SELECT 
c.course_name,
sum(p.quantity) as total_quantity_sold
FROM courses c
JOIN purchase p on c.course_id = p.course_id
GROUP BY c.course_id, c.course_name
ORDER BY total_quantity_sold DESC
LIMIT 3;

-- Category Revenue & Unique Learners -- 
SELECT
c.category,
FORMAT (sum(p.quantity * p.unit_price), 2) as total_revenue,
COUNT(distinct p.learner_id) as unique_learners
FROM courses c
LEFT JOIN purchase p on c.course_id = p.course_id
GROUP BY c.category;


-- Leaners with Multi-Category Purchase -- 
SELECT
l.full_name,
COUNT(distinct c.category) as categories_purchased
FROM learners l
JOIN purchase p on l.learner_id = p.learner_id
JOIN courses c on p.course_id = c.course_id
GROUP BY l.learner_id, l.full_name
HAVING Count(distinct c.category) > 1;

-- Courses Not Purchased --
SELECT
c.course_name,
c.category
FROM Courses c
LEFT Join purchase p on c.course_id = p.course_id
WHERE p.course_id is null;

-- Average Courses per transaction -- 
SELECT 
AVG(quantity) as average_courses_per_order
FROM purchase;

-- Revenue by Category --
SELECT
c.category,
COUNT(p.id) as total_orders,
FORMAT (sum(p.quantity * p.unit_price), 2) AS total_revenue
FROM courses c
JOIN purchase p on c.course_id = p.course_id
GROUP BY c.category
ORDER BY sum(p.quantity * p.unit_price) DESC;

-- Monthly Sales Trend -- 
SELECT 
DATE_FORMAT(purchase_date,'%Y-%m') as purchase_month,
FORMAT (sum(quantity * unit_price), 2) AS monthly_revenue
FROM purchase
GROUP BY purchase_month
ORDER BY purchase_month;

-- Best Selling Bundles --
SELECT 
l.full_name,
GROUP_Concat(c.course_name SEPARATOR ', ') AS courses_purchased
FROM learners l
JOIN purchase p on l.learner_id = p.learner_id
JOIN courses c on p.course_id = c.course_id
GROUP BY l.learner_id, l.full_name
HAVING Count(p.id) > 1;

SELECT 
    p1.course_id AS Course_A, 
    p2.course_id AS Course_B, 
    COUNT(*) AS Times_Bought_Together
FROM purchase p1
JOIN purchase p2 ON p1.learner_id = p2.learner_id 
    AND p1.purchase_date = p2.purchase_date
    AND p1.course_id < p2.course_id
GROUP BY p1.course_id, p2.course_id
ORDER BY Times_Bought_Together DESC
LIMIT 5;

-- Country buying more Courses --alter
SELECT 
l.country, 
SUM(p.quantity) AS total_courses_purchased,
SUM(p.quantity * p.unit_price) AS total_revenue
FROM learners l
JOIN purchase p ON l.learner_id = p.learner_id
GROUP BY l.country
ORDER BY total_courses_purchased DESC;