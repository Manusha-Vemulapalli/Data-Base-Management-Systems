use assignment1;
## Question 1 ##
select name,id,email from player where PlayPos="Middle";
## Question 2 ##
select year, totalpoints from stats s, player p where s.playerID = p.ID and p.name = 'Lobo Louie';
## Question 3 ##
select name, phonenumber from Manager where ID in 
(select managerID from managerCertificate group by managerID having count(distinct(certificate)) = 2);

## Question 4 ##
select p.name from player p, play pl, game g where p.id = pl.playerid and pl.gameid = g.gameid 
and g.playingvenue = 'PanAm' and g.result = 'lose' order by birthday;

## Question 5 ##
select * from player p, takeexam te where p.ID = te.playerid;

## Question 6 ##
select g.date, g.playingvenue, g.result from game g, play pl, player p where p.id = pl.playerid 
and pl.gameid = g.gameid and p.name = 'Lobo Louie' and g.gameid in 
(select gg.gameid from game gg, play pla, player pp where pp.id = pla.playerid and pla.gameid = gg.gameid and pp.name = 'yoyo');

## Question 7 ##
select g.date, g.playingvenue, g.result from game g, play pl, player p 
where p.id = pl.playerid and pl.gameid = g.gameid and p.name = 'yoyo' and (year(g.date) = 2016 or year(g.date) = 2017);

## Question 8 ##
select p.name, p.id from player p, stats s where s.playerid = p.id and s.totalpoints < (select avg(totalpoints) from stats);

## Question 9 ##
select p.name, pp.name, p.playpos from player p, player pp where p.playpos = pp.playpos and p.id != pp.id;

## Question 10 ##
select sum(totalpoints) from stats where year = 2012;