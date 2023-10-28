      -- creating table PLAYERS
      
create table Players( Name varchar(32),
	 PlayerID int NOT NULL primary key,
	Teamname 		varchar(32) NOT NULL,
	 Position	        varchar(5) NOT NULL,
	 Touchdowns		int NOT NULL,
	 TotalYards  int NOT NULL,
     Salary  int NOT NULL,
	 primary key (PlayerID),
     constraint check_2 check (position in ('QB','RB','WR')));
     
     -- creating table GAMES
     
create table Games (GameID int NOT NULL,
		Date  date NOT NULL, 
        Stadium varchar(32) NOT NULL,
        Result char(1) NOT NULL,
        Attendance  int NOT NULL,
        TicketRevenue int NOT NULL,
        primary key(GameID),
        constraint check_1 check (result=('W','L','T')));
        
        -- creating table PLAY
        
create table Play 
		(PlayerID   int,
         GameID   int,
         foreign key(GameID) references Games(GameID)
         on delete set null,
         foreign key(PlayerID) references Player(PlayerID)
         on delete set null);
         
         
         

        
        
        
        
        

     
     
     
 