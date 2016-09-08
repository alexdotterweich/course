/** Question 1:  Find the number of emails that mention “Obama” in the ExtractedBodyText of the email. **/
SELECT COUNT(*) FROM Emails WHERE ExtractedBodyText LIKE '%obama%';
/** Question 2: Among people with Aliases, find the average number of Aliases each person has. **/

/** Question 3: Find the MetadataDateSent on which the most emails were sent and the number of emails that were sent on * that date. Note that that many emails do not have a date -- don’t include those in your count. **/
SELECT MetadataDateSent, COUNT(MetadataDateSent) AS MOST_FREQUENT
FROM Emails
GROUP BY MetadataDateSent
ORDER BY COUNT(MetadataDateSent) DESC LIMIT 2;
/** Question 4: Find out how many distinct ids refer to Hillary Clinton. Remember the hint from the homework spec! **/

/** Question 5: Find the number of emails in the database sent by Hillary Clinton. Keep in mind that there are multiple * aliases (from the previous question) that the email could’ve been sent from. **/
SELECT COUNT(MetadataTo) FROM Emails;
/** Question 6: Find the names of the 5 people who emailed Hillary Clinton the most. **/
SELECT MetadataFrom,
COUNT(MetadataFrom) AS MOST_FREQUENT
FROM Emails
GROUP BY MetadataFrom
ORDER BY COUNT(MetadataFrom) DESC LIMIT 6;
/** Question 7: Find the names of the 5 people that Hillary Clinton emailed the most. **/
SELECT MetadataTo,
COUNT(MetadataTo) AS MOST_FREQUENT
FROM Emails
GROUP BY MetadataTo
ORDER BY COUNT(MetadataTo) DESC LIMIT 6;
