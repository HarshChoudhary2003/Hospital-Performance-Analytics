-- 1. Top 5 Highest Billing Patients (ROW_NUMBER)
SELECT
    Name,
    Hospital,
    `Medical Condition`,
    `Billing Amount`,
    ROW_NUMBER() OVER(
        ORDER BY `Billing Amount` DESC
    ) AS patient_rank
FROM healthcare_dataset
LIMIT 5;
-- 2. Rank Hospitals by Total Revenue
SELECT
    Hospital,
    ROUND(SUM(`Billing Amount`),2) AS total_revenue,
    RANK() OVER(
        ORDER BY SUM(`Billing Amount`) DESC
    ) AS revenue_rank
FROM healthcare_dataset
GROUP BY Hospital;
-- 3. Dense Rank Doctors by Patient Count
SELECT
    Doctor,
    COUNT(*) AS total_patients,
    DENSE_RANK() OVER(
        ORDER BY COUNT(*) DESC
    ) AS doctor_rank
FROM healthcare_dataset
GROUP BY Doctor;
-- 4. Percentage Contribution of Each Hospital
SELECT
    Hospital,
    ROUND(SUM(`Billing Amount`),2) AS revenue,
    ROUND(
        SUM(`Billing Amount`) * 100 /
        (SELECT SUM(`Billing Amount`) FROM healthcare_dataset),
        2
    ) AS revenue_percentage
FROM healthcare_dataset
GROUP BY Hospital
ORDER BY revenue DESC;
-- 5. Average Billing Compared to Overall Average
SELECT
    Hospital,
    ROUND(AVG(`Billing Amount`),2) AS avg_billing,
    CASE
        WHEN AVG(`Billing Amount`) >
            (SELECT AVG(`Billing Amount`) FROM healthcare_dataset)
        THEN 'Above Average'
        ELSE 'Below Average'
    END AS billing_status
FROM healthcare_dataset
GROUP BY Hospital;
-- 6. Length of Stay
SELECT
    Name,
    Hospital,
    DATEDIFF(`Discharge Date`,`Date of Admission`) AS stay_days
FROM healthcare_dataset;
-- 7. Average Stay by Hospital
SELECT
    Hospital,
    ROUND(
        AVG(
            DATEDIFF(`Discharge Date`,`Date of Admission`)
        ),
        2
    ) AS average_stay
FROM healthcare_dataset
GROUP BY Hospital
ORDER BY average_stay DESC;
-- 8. Longest Hospital Stay
SELECT
    Name,
    Hospital,
    DATEDIFF(`Discharge Date`,`Date of Admission`) AS stay_days
FROM healthcare_dataset
ORDER BY stay_days DESC
LIMIT 10;
-- 9. Monthly Revenue Trend
SELECT
    YEAR(`Date of Admission`) AS year,
    MONTHNAME(`Date of Admission`) AS month,
    ROUND(SUM(`Billing Amount`),2) AS revenue
FROM healthcare_dataset
GROUP BY
    YEAR(`Date of Admission`),
    MONTH(`Date of Admission`),
    MONTHNAME(`Date of Admission`)
ORDER BY
    YEAR(`Date of Admission`),
    MONTH(`Date of Admission`);
-- 10. Insurance Provider Revenue
SELECT
    `Insurance Provider`,
    ROUND(SUM(`Billing Amount`),2) AS total_revenue
FROM healthcare_dataset
GROUP BY `Insurance Provider`
ORDER BY total_revenue DESC;
-- 11. Most Common Medical Condition by Gender
SELECT
    Gender,
    `Medical Condition`,
    COUNT(*) AS patients
FROM healthcare_dataset
GROUP BY
    Gender,
    `Medical Condition`
ORDER BY
    Gender,
    patients DESC;
-- 12. Revenue by Admission Type
SELECT
    `Admission Type`,
    ROUND(SUM(`Billing Amount`),2) AS revenue
FROM healthcare_dataset
GROUP BY `Admission Type`
ORDER BY revenue DESC;
-- 13. Doctors Treating Multiple Conditions
SELECT
    Doctor,
    COUNT(DISTINCT `Medical Condition`) AS conditions_treated
FROM healthcare_dataset
GROUP BY Doctor
ORDER BY conditions_treated DESC;
-- 14. Top Medication by Usage
SELECT
    Medication,
    COUNT(*) AS prescriptions
FROM healthcare_dataset
GROUP BY Medication
ORDER BY prescriptions DESC
LIMIT 10;
-- 15. Hospital Revenue Classification
SELECT
    Hospital,
    ROUND(SUM(`Billing Amount`),2) AS revenue,
    CASE
        WHEN SUM(`Billing Amount`) >= 500000 THEN 'High Revenue'
        WHEN SUM(`Billing Amount`) >= 250000 THEN 'Medium Revenue'
        ELSE 'Low Revenue'
    END AS revenue_category
FROM healthcare_dataset
GROUP BY Hospital
ORDER BY revenue DESC;
