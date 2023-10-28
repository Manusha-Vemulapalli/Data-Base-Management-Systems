-- Question 1
select S.starname as name from Starsin S, Movie M where S.movietitle = M.title and 
M.studioname='JafariStudios' and M.year=2014;
-- I was a bit confused about where to place the assumed naming of the table

-- Question 2
select Name from MovieStar where NetWorth = (select max(NetWorth) from MovieStar);
-- I thought that the max function should be placed on either sides of the word NetWorth

-- Question 3
select studioName,sum(budget) as Budget2014 from movie where year=2014 group by StudioName having sum(Budget) >= 
all(Select sum(Budget) from Movie where Year=2014 group by StudioName);

-- Question 4
select S.movieTitle, avg(MS.Networth) from StarsIn S,MovieStar MS where S.starName = MS.Name group by S.movieTitle having avg(MS.NetWorth)>300;

-- Question 5
select distinct movieTitle as title from StarsIn where movietitle like 'Bo%' and movieyear=2014;
-- I didn't see the column names correctly and corrected them.  

-- Relational algebra 1
select studioname, sum(budget) from movie group by studioname;
/* I've corrected the symbol i.e.; calligraphic G, i didn't know how to write the subscript & superscript exactly in the discussion board.
   after seeing the table clearly I got to know the mistake*/
   
-- Relational algebra 2
select length from movie where title = "Birdman";
-- I,ve given the wrong column table and corrected it by looking at the table. 

