   -- inserting into PLAYERS table
   
insert into Players(Name,PlayerID,Teamname,Position,Touchdowns,TotalYards,Salary) values
 ('Michael',111,'Punjabkings','QR',4,100,50000);
 insert into Players(Name,PlayerID,Teamname,Position,Touchdowns,TotalYards,Salary) values
 ('William',112,'Sunrisershyd','QR',3,110,57000);
 insert into Players(Name,PlayerID,Teamname,Position,Touchdowns,TotalYards,Salary) values
 ('James',113,'Delhicapitals','QR',6,100,62000);
 insert into Players(Name,PlayerID,Teamname,Position,Touchdowns,TotalYards,Salary) values
 ('Samuel',114,'Rajasthanroyals','WR',5,105,70000);
 insert into Players(Name,PlayerID,Teamname,Position,Touchdowns,TotalYards,Salary) values
 ('Jennifer',115,'Mumbaiindians','RB',2,110,76000);
 
	-- inserting into GAMES table
    
insert into Games(GameID,Date,Stadium,Result,Attendance,TicketRevenue) values
 (11,2020-02-03,'KFCYumcenter','W',45000,60000);
insert into Games(GameID,Date,Stadium,Result,Attendance,TicketRevenue) values
(12,2020-02-07,'Smoothiekingcenter','L',30000,42000);
insert into Games(GameID,Date,Stadium,Result,Attendance,TicketRevenue) values
(13,2020-02-14,'Phoenixsunsarena','T',41000,56000);
insert into Games(GameID,Date,Stadium,Result,Attendance,TicketRevenue) values
(14,2020-01-31,'Guaranteedratefield','W',70000,64000);
insert into Games(GameID,Date,Stadium,Result,Attendance,TicketRevenue) values
(15,2020-02-16,'Emirates','L',39000,58000);

   -- inserting into PLAY table
   
insert into Play(PlayerID,GameID) values(111,11);
insert into Play(PlayerID,GameID) values(112,12);
insert into Play(PlayerID,GameID) values(113,13);
insert into Play(PlayerID,GameID) values(114,14);
insert into Play(PlayerID,GameID) values(115,15);


