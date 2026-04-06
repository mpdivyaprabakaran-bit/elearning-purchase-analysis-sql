**Analyzing E-Learning Platform Purchases using MySQL**

**Project Overview:**
This project focuses on the design and implementation of a relational database for an e-learning platform. By structuring raw purchase data into a centralized system, the project demonstrates how SQL can be used to manage global digital transactions and transform them into actionable business intelligence.

**Problem Statement:**
Currently, the platform's data is fragmented, making it difficult to track learner behaviors, identify high-performing courses, or determine which regions drive the most revenue. This project provides a "single source of truth" to answer critical business questions through SQL joins and aggregations.

**Database Schema:**
The database (ELearningDB) consists of three primary entities;

**Learners**: Stores unique learner IDs, full names, and countries.
**Courses**: Contains course IDs, names, and categories (e.g., Programming, Design, Data Science).
**Purchase**: Tracks individual transactions, linking learners to courses with details on quantity, price, and date.

**Key Insights Derived:**
**Top Revenue Drivers**: The "Design" category is the highest revenue generator, with courses like UX/UI & Digital Design performing exceptionally well.
**Global Sales Trends**: While Mexico has the highest number of courses purchased, India generates more total revenue.
**Most Popular Courses**: Python Mastery, Tableau/Power BI, and MySQL for Analytics are the top 3 most purchased courses.
**Sales Seasonality**: The highest revenue peaks were observed in November and December 2025.
**Course Bundling**: Data Science Essentials and MySQL for Analytics are the most common courses bought together.

**Tools & Technologies:**
MySQL: Used for database creation, schema design, data population, and advanced analytical querying.

