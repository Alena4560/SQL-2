select TITLE, YEAR_OF_ISSUE from ALBUM where YEAR_OF_ISSUE = 2018;
SELECT title, MAX(DURATION) from track group by title;
select title from track where duration>=210;
select title from compilation where year_of_issue between 2018 and 2020;
select name from executor where name not like '% %';
select title from track where title like '%my%' or title like '%мой%';




select COUNT(EXECUTOR_ID)/COUNT(distinct GENRE_ID) from GENREEXECUTOR;

select COUNT(TRACK.TITLE), YEAR_OF_ISSUE from TRACK join ALBUM on TRACK.ID = ALBUM_ID where YEAR_OF_ISSUE BETWEEN 2019 and 2020 group by YEAR_OF_ISSUE;

select AVG(DURATION), ALBUM_ID from TRACK join ALBUM on TRACK.ID = ALBUM_ID GROUP BY ALBUM_ID;

select distinct name from executor JOIN albumexecutor on EXECUTOR.id = EXECUTOR_ID JOIN album on EXECUTOR_ID = ALBUM.ID WHERE not year_of_issue = 2020;

select title from COMPILATION join TRACKCOMPILATION on ID = COMPILATION_ID where COMPILATION_ID = (select ID from TRACK where ID = (select ALBUM_ID from ALBUMEXECUTOR where ALBUM_ID =(select ID from EXECUTOR where NAME = 'Modern Talking')));

select TITLE from ALBUM join ALBUMEXECUTOR on ALBUM.ID = EXECUTOR_ID where EXECUTOR_ID = (select ID from EXECUTOR where EXECUTOR.ID = (select EXECUTOR_ID from GENREEXECUTOR where COUNT(GENRE_ID) > 1);

select T.title from TRACK T left join COMPILATION C on T.ID = C.ID where C.ID is null;

select name from executor where EXECUTOR.ID = (select EXECUTOR_ID from ALBUMEXECUTOR where ALBUM_ID = (select ALBUM_ID from TRACK where DURATION = (select MIN(DURATION) from TRACK)));

select ALBUM.TITLE, count(ALBUM.ID) from ALBUM join TRACK on ALBUM.ID = TRACK.ID group by ALBUM.TITLE HAVING COUNT(TRACK.ID) order by count(ALBUM.ID) LIMIT 1;