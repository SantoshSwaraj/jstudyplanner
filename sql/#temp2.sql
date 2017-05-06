SELECT major.id AS 'm_id'
	,major.code AS 'm_code'
	,major.title AS 'm_title'
	,major.program_fk AS 'p_fk'
	,program.code AS 'p_code'
	,program.title AS 'p_title'
	,course.id AS 'c_id'
	,course.code AS 'c_code'
	,course.title AS 'c_title'
FROM jstudyplanner.major
INNER JOIN jstudyplanner.program ON program.id = major.program_fk
JOIN jstudyplanner.major_compulsory_courses ON major_compulsory_courses.major_fk = major.id
JOIN jstudyplanner.course ON major_compulsory_courses.course_fk = course.id
ORDER BY major.id, course.id;