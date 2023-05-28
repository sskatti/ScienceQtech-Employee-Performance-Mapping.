SELECT ID,
  	`Case Number`,
  	`Primary Type`,
  	Description,
  	Arrest,
  	Location
   FROM project.crime_us;

SELECT* FROM project.crime_us
WHERE Description = 'OVER $500';


SELECT count(*)
FROM project.crime_us;
SELECT `Primary Type`, COUNT(`Primary Type`)
FROM project.crime_us
group by `Primary Type`
order by count(`Primary Type`);


select cast(new_datetime as date) date_, cast(new_datetime as time) time_
from (select Date,
Coalesce(str_to_date(Date, '%m-%d-%Y %T'), str_to_date(Date, '%m/%d/%Y %T')) as new_datetime
From project.crime_us)d ;
