-- DELIVERABLE 1

SELECT * FROM employees;

SELECT emp_no, first_name, last_name
FROM employees;

SELECT * FROM titles;

SELECT title, from_date, to_date
FROM titles;

-- Deliverable 1, Steps 1 - 7
SELECT e.emp_no, e.first_name, e.last_name,
t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,rt.first_name,
rt.last_name,rt.title
INTO unique_titles
FROM retirement_titles AS  rt
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles

-- Steps 15 - 21
SELECT COUNT(t.title), t.title
INTO retiring_titles
FROM unique_titles as t
GROUP BY title
ORDER BY COUNT DESC;

SELECT * FROM retiring_titles


-- DELIVERABLE 2
-- Write a query to create a Mentorship Eligibility table that 
-- holds the employees who are eligible
-- to participate in a mentorship program.

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, 
e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibilty










