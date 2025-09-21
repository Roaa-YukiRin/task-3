-- جدول الطلاب (Students)
CREATE TABLE Students (
	student_id INT PRIMARY KEY,
	student_name VARCHAR(255)
);

-- إضافة بيانات إلى جدول الطلاب
INSERT INTO Students (student_id, student_name) VALUES 
(1, 'لؤي'),
(2, 'رامي'),
(3, 'ركان');

--إظهار الجدول الأول
SELECT * FROM Students;

-- جدول الدرجات (Grades)
CREATE TABLE Grades (
	grade_id INT PRIMARY KEY,
	student_id INT,-- مفاتيح هذا الجدول
	subject VARCHAR(255),
	grade DECIMAL(5, 2),
	FOREIGN KEY (student_id) REFERENCES Students (student_id)
);

-- إضافة بيانات للجدول
INSERT INTO Grades (grade_id, student_id, subject, grade) VALUES
(101, 1, 'AI', 95.50),
(102, 2, 'اCOMPUTER SCINCE', 88.00),
(103, 1, 'اCYBER SECURTY', 92.00),
(104, 3, 'DATA ANALYSIS', 75.25);

--إظهار الجدول الEHKD
SELECT * FROM Grades;

--تطبيق الـ JOIN
SELECT * from Students JOIN Grades ON 
Students.student_id = Grades.grade_id;

SELECT 
    Students.student_name,
    Grades.subject,
    Grades.grade
FROM 
    Students
INNER JOIN 
    Grades ON Students.student_id = Grades.student_id; -- This is correct