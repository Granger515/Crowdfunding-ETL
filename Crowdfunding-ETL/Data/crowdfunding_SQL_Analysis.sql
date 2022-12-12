-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT cam.cf_id, cam.backers_count
FROM campaign as cam
WHERE cam.outcome = ('live')
GROUP BY cam.cf_id
ORDER BY cam.backers_count DESC;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT ba.cf_id,
	COUNT (ba.backer_id)
FROM backers as ba
INNER JOIN campaign as cam
ON (ba.cf_id = cam.cf_id)
WHERE cam.outcome = ('live')
GROUP BY ba.cf_id
ORDER BY COUNT (ba.backer_id) DESC;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 

--CREATE TABLE email_contacts_remaining_goal_amount AS

--INTO email_contacts_remaining_goal_amount

SELECT con.first_name,
	con.last_name,
	con.email,
	(cam.goal-cam.pledged) AS "Remaining Goal Amount"
INTO email_contacts_remaining_goal_amount
FROM contacts AS con
JOIN campaign AS cam
ON (con.contact_id = cam.contact_id)
WHERE cam.outcome = ('live')
ORDER BY "Remaining Goal Amount" DESC;

-- Check the table
SELECT * FROM email_contacts_remaining_goal_amount

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 

SELECT ba.email, 
	ba.first_name,
	ba.last_name,
	cam.cf_id,
	cam.company_name,
	cam.description,
	cam.end_date,
	(cam.goal-cam.pledged) AS "Left of Goal"
INTO email_backers_remaining_goal_amount
FROM backers AS ba
INNER JOIN campaign AS cam
ON (ba.cf_id = cam.cf_id)
WHERE cam.outcome = ('live')
ORDER BY ba.email DESC;

-- Check the table
SELECT * FROM email_backers_remaining_goal_amount
