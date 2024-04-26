UPDATE have_grade
SET point = 20
WHERE user_id = '1' AND exam_id = '2';


UPDATE have_grade
SET point = 0.5
WHERE user_id = '1' AND exam_id = '2';


SELECT "user".first_name, "user".last_name, "user".ref, have_grade.point
FROM "user"
JOIN have_grade ON "user".id = have_grade.user_id
WHERE have_grade.exam_id = '2' AND have_grade.point < 10;