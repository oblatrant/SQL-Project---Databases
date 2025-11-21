
SELECT 
	M.MajorName,
    M.MajorID,
	A.ScoreRange2 AS ScoreRange2,
    A.ScoreRange4 AS ScoreRange4,
    I.IncomeID,
    I.ProgramType,
    I.EarlyCareerIncome,
    I.MidCareerIncome

FROM Majors M 
LEFT JOIN ACTScores A ON M.MajorID = A.MajorID



LEFT JOIN(
	SELECT IncomeID, MajorID, '4 Year' AS ProgramType, EarlyCareerIncome, MidCareerIncome
	FROM Income_4_Year_Program
	WHERE MajorID IS NOT NULL
	UNION
	SELECT IncomeID, MajorID, '2 Year' AS ProgramType, EarlyCareerIncome, MidCareerIncome
	FROM Income_2_Year_Program
) I ON M.MajorID = I.MajorID
LEFT JOIN CollegePlan CP ON M.MajorID = CP.MajorID
ORDER BY M.MajorID, I.ProgramType;