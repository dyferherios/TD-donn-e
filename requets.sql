UPDATE have_grade
SET point = 20
WHERE user_id = '1' AND exam_id = '2';


UPDATE have_grade
SET point = 0.5
WHERE user_id = '1' AND exam_id = '2';


SELECT 
    "user".first_name, 
    "user".last_name, 
    "user".ref, 
    have_grade.point
FROM "user"
INNER JOIN have_grade ON "user".id = have_grade.user_id
WHERE have_grade.exam_id = '2' AND have_grade.point < 10;


SELECT 
    "user".email, 
    "user".first_name, 
    "user".last_name, 
    have_grade.point, 
    exam.exam_date 
from "user" 
inner join have_grade on "user".id = have_grade.user_id
inner join exam on exam.id = have_grade.exam_id where exam.course_id = 3
order by point desc limit 1;




select 
    follow.user_id
from follow
where follow.course_id = 1;

-- Find the user who doesn't follow the LV1
select * 
from 
    "user"
where 
    id not in (
        select user_id
        from follow
        where course_id = 1;
    );
