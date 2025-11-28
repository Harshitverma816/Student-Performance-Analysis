-- Student Performance Data Analysis SQL Queries

-- 1. Count by Gender
select gender, count(*) as total
from student_performance
group by gender;

-- 2. Count of students by race
select race_ethnicity, count(*) as total
from student_performance
group by race_ethnicity;

-- 3. Average scores of all subjects
select 
    avg(math_score) as avg_math,
    avg(reading_score) as avg_reading,
    avg(writing_score) as avg_writing,
    AVG(avg_score) as overall_avg_score
from student_performance;

-- 4. Students who passed all subjects
select *
from student_performance
where passed_all = 1;

-- 5. Students who failed in at least one subject
select *
from student_performance
where passed_all = 0;

-- 6. Average score by Gender
select gender, avg(avg_score) as avg_score
from student_performance
group by gender;

-- 7. Lunch type vs average score
select lunch, avg(avg_score) as avg_score
from student_performance
group by lunch;

-- 8. Count of students by parental level of education
select parental_level_of_education, count(*) as total_students
from student_performance
group by parental_level_of_education;

-- 9. Test preparation course impact
select test_preparation_course,
       avg(math_score) as avg_math,
       avg(reading_score) as avg_reading,
       avg(writing_score) as avg_writing,
       avg(avg_score) as overall_average
from student_performance
group by test_preparation_course;

-- 10. Performance bands count
select performance_band, count(*) as total_students
from student_performance
group by performance_band;

-- 11. Grade band count
select grade_band, count(*) as total_students
from student_performance
group by grade_band;

-- 12. Top 10 Students by Average Score
select *
from student_performance
order by avg_score desc
limit 10;

-- 13. Rank students based on avg_score
select 
    *,
    rank() over (order by avg_score desc) as score_rank
from student_performance;

-- 14. Dense rank of students by total score
select 
    *,
    dense_rank() over (order by total_score desc) as total_rank
from student_performance;

-- 15. Average score per gender with percentage contribution
select 
    gender,
    count(*) as total_students,
    ROUND((count(*) * 100.0 / (select count(*) from student_performance)), 2) as percentage_share
from student_performance
group by gender;

-- 16. Best performing parental education group
select 
    parental_level_of_education,
    avg(avg_score) as avg_score
from student_performance
group by parental_level_of_education
order by avg_score desc;

-- 17. Identify score gaps between reading & writing
select 
    *,
    (reading_score - writing_score) as score_gap
from student_performance
order by score_gap desc;

-- 18. Top performers by gender
select *
from student_performance
where avg_score > 85
order by gender, avg_score desc;

-- 19. Pass-rate by gender
select 
    gender,
    avg(pass_math) * 100 as math_pass_rate,
    avg(pass_reading) * 100 as reading_pass_rate,
    avg(pass_writing) * 100 as writing_pass_rate,
    avg(passed_all) * 100 as overall_pass_rate
from student_performance
group by gender;

-- 20. Pass-rate by test preparation
select 
    test_preparation_course,
    avg(passed_all) * 100 as overall_pass_rate
from student_performance
group by test_preparation_course;

-- 21. Gender-wise subject weakness
select 
    gender,
    avg(math_score) as avg_math,
    avg(reading_score) as avg_reading,
    avg(writing_score) as avg_writing
from student_performance
group by gender;

-- 22. Score distribution by race & gender
select 
    race_ethnicity,
    gender,
    avg(avg_score) as avg_score
from student_performance
group by race_ethnicity, gender;

-- 23. Which student groups benefit most from test preparation?
select 
    parental_level_of_education,
    test_preparation_course,
    avg(avg_score) as avg_score
from student_performance
group by parental_level_of_education, test_preparation_course
order by avg_score desc;

