/*
Table: Tweets

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| tweet_id       | int     |
| content        | varchar |
+----------------+---------+
tweet_id is the primary key (column with unique values) for this table.
content consists of alphanumeric characters, '!', or ' ' and no other special characters.
This table contains all the tweets in a social media app.


Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

Return the result table in any order.
*/

create table tweets(
    tweet_id int,
    content varchar
);

insert into tweets(tweet_id , content)
values (1,'Let us Code');

insert into tweets(tweet_id , content)
values(2, 'More than fifteen chars are here!');

select tweets.tweet_id from tweets where length(content) > 15;