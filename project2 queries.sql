 use ig_clone;
 
 #Marketing Analysis
 
 #Find the 5 oldest users of the Instagram from the database provided. 

SELECT 
    username, created_at
FROM
    users
ORDER BY created_at
LIMIT 5;


#Identify users who have never posted a single photo on Instagram.
SELECT username
FROM users
LEFT JOIN photos
ON users.id=photos.user_id
WHERE photos.id IS NULL;


#Determine the winner of the contest and provide their details to the team.

SELECT 
username, photos.id, photos.image_url, count(likes.user_id) AS total
FROM photos
INNER JOIN  likes
ON likes.photo_id=photos.id
INNER JOIN users
ON photos.user_id=users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

#Identify and suggest the top five most commonly used hashtags on the platform.

SELECT 
tags.tag_name, 
COUNT(*) AS total
FROM photo_tags
JOIN tags
ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;

#Provide insights on when to schedule an ad campaign.
SELECT 
    DAYNAME(created_at) AS day_of_week,
    COUNT(id) AS User_Registered
FROM
    users
GROUP BY day_of_week
ORDER BY User_Registered DESC
LIMIT 1;


#Investor metrics
#Calculate the average number of posts per user on Instagram. 
#Also, provide the total number of photos on Instagram divided by the total number of users.

WITH cte AS
(
SELECT 
    u.id AS userid, COUNT(p.id) AS photoid
FROM
    users u
        LEFT JOIN
    photos p ON u.id = p.user_id
GROUP BY u.id
)
SELECT 
    SUM(photoid) AS total_photo, COUNT(userid) AS total_users
FROM
    cte;


SELECT 
    AVG(Number_of_Post) AS average_post_per_user
FROM
    (SELECT 
        user_id, COUNT(*) AS Number_of_Post
    FROM
        photos
    GROUP BY user_id) AS average_post_count;
    
    
    
#Identify users (potential bots) who have liked every single photo on the site.

SELECT 
    user_id, username
FROM
    likes
INNER JOIN
    users ON likes.user_id = users.id
GROUP BY user_id
HAVING COUNT(DISTINCT photo_id) = (SELECT COUNT(*) FROM photos);

   
   
        
        