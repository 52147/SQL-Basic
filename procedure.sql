-- To calculate the average grade for a student, you could use the following SQL every time:
SELECT AVG(Score) as AverageGrade 
FROM Grades 
WHERE StudentID = ?



-- However, if you're frequently calculating average grades, it makes sense to encapsulate this logic into a stored procedure. Here's how you might define the stored procedure:

CREATE PROCEDURE GetAverageGrade (@StudentID INT)
AS
BEGIN
    SELECT AVG(Score) as AverageGrade 
    FROM Grades 
    WHERE StudentID = @StudentID
END


EXEC GetAverageGrade 1
