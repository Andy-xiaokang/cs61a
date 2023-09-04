.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = "blue" AND pet = "dog";


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color FROM students AS a, students AS b 
  WHERE a.pet = b.pet AND a.song = b.song AND a.time < b.time;


CREATE TABLE sevens AS
  SELECT stu.seven FROM students AS stu, numbers AS num WHERE stu.time = num.time AND stu.number = 7 AND num."7" = "True";


CREATE TABLE favpets AS
  SELECT pet, COUNT(*) AS count FROM students GROUP BY pet ORDER BY count DESC LIMIT 10;


CREATE TABLE dog AS
  SELECT pet, COUNT(*) FROM students WHERE pet = "dog";


CREATE TABLE bluedog_agg AS
  SELECT song, count(*) as count from bluedog_songs group by song order by count desc;


CREATE TABLE instructor_obedience AS
  SELECT seven, instructor, count(*) from students where seven = '7' group by instructor;

