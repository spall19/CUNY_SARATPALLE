/*
Create table for list of movies, each moveie will have a unique id # movie_id
Columns has movie name, release date and genre
*/

CREATE TABLE IF NOT EXISTS movies_list(
movie_id int primary key,
movie_name varchar(50),
release_date date,
genre varchar(20)
);

/*
Insert 6 movies which I took survey from survey monkey
*/
INSERT INTO movies_list(movie_id,movie_name,release_date,genre) 
	   VALUES(1,'Avengers: End Game',20190203,'action');
INSERT INTO movies_list(movie_id,movie_name,release_date,genre) 
       VALUES(2,'John Wick 3',2019movies_list0416,'Thiller');
INSERT INTO movies_list(movie_id,movie_name,release_date,genre) 
	   VALUES(3,'Captain Marvel',20190618,'action');
INSERT INTO movies_list(movie_id,movie_name,release_date,genre) 
	   VALUES(4,'Aladdin',20190718,'action:adventure');
INSERT INTO movies_list(movie_id,movie_name,release_date,genre) 
	   VALUES(5,'Star Wars: The Rise of Skywalker',20190816,'sci-fi');
INSERT INTO movies_list(movie_id,movie_name,release_date,genre) 
	   VALUES(6,'Terminator: Dark Fate',20190904,'sci-fi');

/*
Create table for movie reviews 
*/
DROP TABLE moviereviews;
CREATE TABLE moviereviews(
  name_of_reviewer varchar(40),
  ip_address varchar(20),
  age int NOT NULL,
  gender varchar(6) NOT NULL,
  movie_id int,
  movie_name varchar(50),
  rating int NOT NULL,
  comments varchar(100),
  PRIMARY KEY(name_of_reviewer,ip_address,movie_id),
  CONSTRAINT fk_moviename FOREIGN KEY (movie_id)
  REFERENCES movies_list(movie_id)
);

DROP TABLE reviewdata;
CREATE TABLE reviewdata(
  name_of_reviewer varchar(40) NOT NULL,
  ip_address varchar(20),
  age int NOT NULL,
  gender varchar(6) NOT NULL,
  movie1_rating int NOT NULL,
  movie2_rating int not null,
  movie3_rating int not null,
  movie4_rating int not null,
  movie5_rating int not null,
  movie6_rating int NOT NULL,
  comments varchar(100),
  PRIMARY KEY(name_of_reviewer,ip_address)
);

/*
From Survey monkey, Results got loaded onto a comma separated file
Load CSV file into the MYSQL server from local system
*/
LOAD DATA INFILE '/Users⁩/saratchandrapalle⁩/Desktop⁩/CUNY⁩/2nd week⁩/MovieReviews.csv'
INTO TABLE reviewdata
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments);


/* Insert Into reviewdata table*/
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Sam','',25,'Male',4,3,2,4,5,5,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Mary','',65,'Female',2,2,5,3,2,4,'');   
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('John','',34,'Male',4,3,4,4,3,3,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Stephanie','',21,'Female',3,3,5,2,2,5,'I like Hobbs& Shaw This yearmoviereviewsreviewdata');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Anirudh','',30,'Male',4,4,5,4,4,3,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Chang','',45,'Male',5,2,3,3,3,4,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Krish','',25,'Male',5,4,4,3,3,4,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Anu','',27,'Female',5,3,5,5,4,4,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Siri','',28,'Female',3,2,4,4,2,2,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Michael','',50,'Male',3,2,4,4,2,5,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Dan Eckert','',70,'Male',4,3,5,5,3,4,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Michelle','',56,'Female',3,3,5,4,2,3,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Harris','',35,'Male',3,2,4,3,5,3,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Jim Morgan','',50,'Male',4,4,3,5,5,4,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Arnavi','',18,'Female',4,2,5,5,4,4,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('malinda','',29,'Female',4,3,5,5,5,4,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('cindy','',30,'Female',4,4,3,5,4,4,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('victor','',17,'Male',5,1,1,4,3,4,'');
INSERT INTO reviewdata(name_of_reviewer,ip_address,age,gender,movie1_rating,movie2_rating,
movie3_rating,movie4_rating,movie5_rating,movie6_rating,comments) 
	   VALUES('Sara','',16,'Female',5,2,5,4,4,2,'');
       





