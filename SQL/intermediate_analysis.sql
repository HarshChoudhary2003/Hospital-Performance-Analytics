-- 1. Patient Age Groups (CASE)
SELECT
    CASE
        WHEN Age <= 18 THEN '0-18'
        WHEN Age BETWEEN 19 AND 35 THEN '19-35'
        WHEN Age BETWEEN 36 AND 50 THEN '36-50'
        WHEN Age BETWEEN 51 AND 65 THEN '51-65'
        ELSE '65+'
    END AS Age_Group,
    COUNT(*) AS Total_Patients
FROM healthcare_dataset
GROUP BY Age_Group
ORDER BY Total_Patients DESC;

-- 2. Average Billing by Medical Condition
SELECT
    `Medical Condition`,
    ROUND(AVG(`Billing Amount`),2) AS Avg_Billing
FROM healthcare_dataset
GROUP BY `Medical Condition`
ORDER BY Avg_Billing DESC;

-- 3. Total Billing by Insurance Provider
SELECT
    `Insurance Provider`,
    ROUND(SUM(`Billing Amount`),2) AS Total_Billing
FROM healthcare_dataset
GROUP BY `Insurance Provider`
ORDER BY Total_Billing DESC;

-- 4. Hospitals with More Than 100 Patients (HAVING)
SELECT
    Hospital,
    COUNT(*) AS Total_Patients
FROM healthcare_dataset
GROUP BY Hospital
HAVING COUNT(*) > 100
ORDER BY Total_Patients DESC;

-- 5. Top 10 Doctors by Number of Patients
SELECT
    Doctor,
    COUNT(*) AS Total_Patients
FROM healthcare_dataset
GROUP BY Doctor
ORDER BY Total_Patients DESC
LIMIT 10;

 -- 6. Monthly Patient Admissions
SELECT
    YEAR(`Date of Admission`) AS Year,
    MONTHNAME(`Date of Admission`) AS Month,
    COUNT(*) AS Total_Admissions
FROM healthcare_dataset
GROUP BY
    YEAR(`Date of Admission`),
    MONTH(`Date of Admission`),
    MONTHNAME(`Date of Admission`)
ORDER BY
    Year,
    MONTH(`Date of Admission`);
    
-- 7. Average Age by Medical Condition
SELECT
    `Medical Condition`,
    ROUND(AVG(Age),1) AS Average_Age
FROM healthcare_dataset
GROUP BY `Medical Condition`
ORDER BY Average_Age DESC;
-- 8. Billing Category (CASE)
SELECT
    Name,
    `Billing Amount`,
    CASE
        WHEN `Billing Amount` < 20000 THEN 'Low'
        WHEN `Billing Amount` BETWEEN 20000 AND 50000 THEN 'Medium'
        ELSE 'High'
    END AS Billing_Category
FROM healthcare_dataset;
-- 9. Patients with Billing Above Average (Subquery)
SELECT
    Name,
    Hospital,
    `Billing Amount`
FROM healthcare_dataset
WHERE `Billing Amount` >
(
    SELECT AVG(`Billing Amount`)
    FROM healthcare_dataset
)
ORDER BY `Billing Amount` DESC;
-- 10. Rank Hospitals by Revenue (Window Function)
SELECT
    Hospital,
    ROUND(SUM(`Billing Amount`),2) AS Total_Billing,
    RANK() OVER(
        ORDER BY SUM(`Billing Amount`) DESC
    ) AS Hospital_Rank
FROM healthcare_dataset
GROUP BY Hospital;
-- 11. Dense Rank Doctors by Patient Count
SELECT
    Doctor,
    COUNT(*) AS Total_Patients,
    DENSE_RANK() OVER(
        ORDER BY COUNT(*) DESC
    ) AS Doctor_Rank
FROM healthcare_dataset
GROUP BY Doctor;
-- 12. Average Billing by Admission Type
SELECT
    `Admission Type`,
    ROUND(AVG(`Billing Amount`),2) AS Average_Billing
FROM healthcare_dataset
GROUP BY `Admission Type`
ORDER BY Average_Billing DESC;
-- 13. Medication Usage by Medical Condition
SELECT
    `Medical Condition`,
    Medication,
    COUNT(*) AS Total_Prescriptions
FROM healthcare_dataset
GROUP BY
    `Medical Condition`,
    Medication
ORDER BY
    `Medical Condition`,
    Total_Prescriptions DESC;
-- 14. Test Result Distribution
SELECT
    `Test Results`,
    COUNT(*) AS Total_Patients
FROM healthcare_dataset
GROUP BY `Test Results`
ORDER BY Total_Patients DESC;
-- 15. Gender Distribution by Medical Condition
SELECT
    `Medical Condition`,
    Gender,
    COUNT(*) AS Total_Patients
FROM healthcare_dataset
GROUP BY
    `Medical Condition`,
    Gender
ORDER BY
    `Medical Condition`,
    Total_Patients DESC;
    
    