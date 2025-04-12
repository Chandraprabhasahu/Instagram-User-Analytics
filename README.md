# Instagram User Analytics Project

##  Overview
This project simulates a real-world scenario where you take on the role of a Data Analyst working alongside Instagram's product team. Your core responsibility is to analyze user behavior and engagement on the platform. The insights derived from this project will help stakeholders, including the marketing, product, and development teams, make strategic, data-informed decisions that impact platform growth and user experience.

Instagram is one of the most widely used social media platforms in the world. Understanding how users interact with the platform is crucial to ensure it remains engaging and relevant. This project uses SQL to extract actionable insights from a relational database, targeting key business objectives.

##  Objective
Use SQL skills to:
- Analyze user interaction and engagement on Instagram.
- Generate data-driven insights for marketing campaigns, product development, and investor reporting.
- Simulate real-life data analyst tasks through various case scenarios.

##  Dataset Description
The dataset comprises multiple tables containing details of users, posts, likes, and hashtags on Instagram. These tables mimic real Instagram backend structures, such as:
- `users`: Information about Instagram users.
- `photos`: Photo posts made by users.
- `likes`: Data on which users liked which photos.
- `hashtags`: Hashtags used in photo posts.

##  SQL Tasks

### A) Marketing Analysis

#### 1. Loyal User Reward
**Objective**: Identify the five oldest users on Instagram.
**SQL Task**: Write a query to sort users by registration date and return the top five.

#### 2. Inactive User Engagement
**Objective**: Target users who have never posted.
**SQL Task**: Identify users who are registered but have never posted a photo.

#### 3. Contest Winner Declaration
**Objective**: Find the most liked photo and declare the winner.
**SQL Task**: Determine the photo with the highest likes and return the associated user's details.

#### 4. Hashtag Research
**Objective**: Discover trending hashtags.
**SQL Task**: List the top five most used hashtags across all posts.

#### 5. Ad Campaign Launch
**Objective**: Identify optimal ad campaign timing.
**SQL Task**: Determine the day of the week with the highest user registrations.

### B) Investor Metrics

#### 1. User Engagement
**Objective**: Measure posting activity of users.
**SQL Task**: Calculate average posts per user and overall platform activity.

#### 2. Bots & Fake Accounts
**Objective**: Detect suspicious user activity.
**SQL Task**: Identify users who liked every single photo on Instagram, indicating potential bot behavior.

##  Outcomes & Business Impact
- Helped the marketing team identify highly engaged users and ideal campaign launch periods.
- Provided insights into inactive user segments for re-engagement strategies.
- Supported investor confidence by measuring real engagement and identifying bot-like behavior.
- Supplied product managers with hashtag usage trends and user behavior patterns for feature planning.

##  Key Learnings
- Applied complex SQL queries involving joins, aggregations, and subqueries.
- Gained experience in translating business questions into data-driven answers.
- Developed analytical thinking around product metrics and user engagement.

##  Tools Used
- SQL
- MySQL (or any preferred SQL environment)
- GitHub (for version control and project documentation)

##  How to Run the Project
1. Clone the repository.
2. Import the dataset into your local SQL database.
3. Use any SQL IDE (e.g., MySQL Workbench, DBeaver) to execute the queries.
4. Analyze the outputs.

##  Folder Structure
```
Instagram-User-Analytics
 ┣ SQL_Queries
 ┃ ┣ marketing_analysis.sql
 ┃ ┣ investor_metrics.sql
 ┣ README.md
 ┗ insights_summary.md
```

## Conclusion

This project demonstrates how data-driven strategies using SQL can significantly impact business decisions in product management, marketing, and investor relations. By uncovering meaningful insights from user behavior data, businesses like Instagram can optimize engagement, tailor campaigns, and ensure platform integrity. These skills and analytical approaches are directly transferable to real-world scenarios in data analytics roles.



---

