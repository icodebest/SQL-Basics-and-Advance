-- Select all data and visulize
select * from movies;
select industry, release_year from movies;
select * from movies where release_year>=2020;
select * from movies where imdb_rating>=6 and imdb_rating<=8;
select * from movies where imdb_rating between 6 and 8;


select *
from movies
where release_year=2020 or release_year=2019 or release_year=2018;

select * from movies where imdb_rating is null;
select * from movies where imdb_rating is not null;

select * 
from movies where industry="hollywood"
order by imdb_rating desc limit 5;

select round(avg(imdb_rating) ,2)from movies where studio="marvel studios";
select count(*) from movies where industry="hollywood";

select
	  industry, count(*)
from movies
group by industry;

select
	  studio, count(*) as total,
      round(avg(imdb_rating),2) as avg_rating
from movies
group by studio
order by avg_rating desc;




