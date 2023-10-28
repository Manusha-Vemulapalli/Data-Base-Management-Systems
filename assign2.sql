create database assign2;
use assign2;
## SQL QUERIES 
## Question 1
select title from Members M,books B,borrowed bo where M.memb_no=bo.memb_no and B.isbn=bo.isbn and Name='Sam';
## Question 2
select memb_no,Name from members where upper(Name) not like 'A%';  
## Question 3
select M.memb_no,count(isbn) from borrowed b,Members M where b.memb_no=M.memb_no and name='Sam'; 
## Question 4
select memb_no,Name from members where lower(Name) like '%m%';
## Question 5
select publisher from books B,members M,borrowed bo where M.memb_no=bo.memb_no and bo.isbn=B.isbn and Name='Kim'; 
