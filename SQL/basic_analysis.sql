-- Query 1: Total Patients
SELECT COUNT(*) AS total_patients
FROM healthcare_dataset;

-- Query 2: Average Patient Age
SELECT ROUND(AVG(age),2) AS average_age
FROM healthcare_dataset;

-- Query 2: Average Patient Age
SELECT ROUND(AVG(age),2) AS average_age
FROM healthcare_dataset;

-- Query 4: Average Billing Amount
SELECT ROUND(AVG(`Billing Amount`), 2) AS average_billing
FROM healthcare_dataset;

-- Query 5: Male vs Female Patients
SELECT
    gender,
    COUNT(*) AS total_patients
FROM healthcare_dataset
GROUP BY gender
ORDER BY total_patients DESC;

-- Query 6: Blood Group Distribution
SELECT
    `Blood Type`,
    COUNT(*) AS patients
FROM healthcare_dataset
GROUP BY `Blood Type`
ORDER BY patients DESC;

-- Query 7: Most Common Medical Conditions
SELECT
    `Medical Condition`,
    COUNT(*) AS total_cases
FROM healthcare_dataset
GROUP BY `Medical Condition`
ORDER BY total_cases DESC;

-- Query 8: Top 10 Hospitals by Patient Count
SELECT
    Hospital,
    COUNT(*) AS total_patients
FROM healthcare_dataset
GROUP BY Hospital
ORDER BY total_patients DESC
LIMIT 10;

-- Query 9: Top 10 Hospitals by Billing
SELECT
    Hospital,
    ROUND(SUM(`Billing Amount`),2) AS total_billing
FROM healthcare_dataset
GROUP BY Hospital
ORDER BY total_billing DESC
LIMIT 10;

-- Query 10: Insurance Provider Distribution
SELECT
    `Insurance Provider`,
    COUNT(*) AS total_patients
FROM healthcare_dataset
GROUP BY `Insurance Provider`
ORDER BY total_patients DESC;

-- Query 11: Admission Type Analysis
SELECT
    `Admission Type`,
    COUNT(*) AS admissions
FROM healthcare_dataset
GROUP BY `Admission Type`
ORDER BY admissions DESC;

-- Query 12: Medication Usage
SELECT
    Medication,
    COUNT(*) AS prescriptions
FROM healthcare_dataset
GROUP BY Medication
ORDER BY prescriptions DESC;

-- Query 13: Test Results Distribution
SELECT
    `Test Results`,
    COUNT(*) AS total_patients
FROM healthcare_dataset
GROUP BY `Test Results`
ORDER BY total_patients DESC;

-- Query 14: Average Billing by Medical Condition
SELECT
    `Medical Condition`,
    ROUND(AVG(`Billing Amount`),2) AS avg_billing
FROM healthcare_dataset
GROUP BY `Medical Condition`
ORDER BY avg_billing DESC;

-- Query 15: Average Age by Medical Condition
SELECT
    `Medical Condition`,
    ROUND(AVG(Age),1) AS average_age
FROM healthcare_dataset
GROUP BY `Medical Condition`
ORDER BY average_age DESC;