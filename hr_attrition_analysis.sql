-- =====================================================
-- HR Attrition Analysis
-- Project: What Drives Employee Attrition?
-- =====================================================

-- Business Question 1:
-- What is the overall employee attrition rate?

SELECT
    COUNT(*) AS total_employees,
    SUM(Termd) AS terminated_employees,
    ROUND(SUM(Termd) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hrdataset_v14 hv;

-- Business Question 2:
-- What is the attrition rate by department?

SELECT
    Department,
    COUNT(*) AS total_employees,
    SUM(Termd) AS terminated_employees,
    ROUND(SUM(Termd) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hrdataset_v14
GROUP BY Department
ORDER BY attrition_rate_pct DESC;

-- Business Question 3:
-- What is the attrition rate by job role?

SELECT
    Position,
    COUNT(*) AS total_employees,
    SUM(Termd) AS terminated_employees,
    ROUND(SUM(Termd) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hrdataset_v14
GROUP BY Position
ORDER BY attrition_rate_pct DESC;

-- Business Question 4:
-- How does employee tenure relate to attrition?

SELECT
    CASE
        WHEN tenure_years < 1 THEN '< 1 year'
        WHEN tenure_years < 3 THEN '1–3 years'
        WHEN tenure_years < 5 THEN '3–5 years'
        ELSE '5+ years'
    END AS tenure_group,
    COUNT(*) AS total_employees,
    SUM(termd) AS terminated_employees,
    ROUND(SUM(termd) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM (
    SELECT
        termd,
        ROUND(
            DATEDIFF(
                CASE
                    WHEN termd = 1
                        THEN STR_TO_DATE(dateoftermination, '%c/%e/%Y')
                    ELSE STR_TO_DATE('2018-11-10', '%Y-%m-%d')
                END,
                STR_TO_DATE(dateofhire, '%c/%e/%Y')
            ) / 365.25,
            2
        ) AS tenure_years
    FROM hrdataset_v14
) AS employee_tenure
GROUP BY tenure_group
ORDER BY
    CASE tenure_group
        WHEN '< 1 year' THEN 1
        WHEN '1–3 years' THEN 2
        WHEN '3–5 years' THEN 3
        ELSE 4
    END;

-- Business Question 5:
-- Does employee performance affect attrition?

SELECT
    performancescore,
    COUNT(*) AS total_employees,
    SUM(termd) AS terminated_employees,
    ROUND(SUM(termd) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hrdataset_v14
GROUP BY performancescore
ORDER BY attrition_rate_pct DESC;

-- Business Question 6:
-- Does employee satisfaction affect attrition?

SELECT
    empsatisfaction,
    COUNT(*) AS total_employees,
    SUM(termd) AS terminated_employees,
    ROUND(SUM(termd) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hrdataset_v14
GROUP BY empsatisfaction
ORDER BY empsatisfaction;

-- Business Question 7:
-- Does salary affect attrition?

SELECT
    CASE
        WHEN salary < 55000 THEN '< 55k'
        WHEN salary < 70000 THEN '55k–70k'
        WHEN salary < 90000 THEN '70k–90k'
        ELSE '90k+'
    END AS salary_group,
    COUNT(*) AS total_employees,
    SUM(termd) AS terminated_employees,
    ROUND(SUM(termd) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hrdataset_v14
GROUP BY salary_group
ORDER BY
    CASE salary_group
        WHEN '< 55k' THEN 1
        WHEN '55k–70k' THEN 2
        WHEN '70k–90k' THEN 3
        ELSE 4
    END;

-- Business Question 8:
-- Which recruitment sources produce employees with the highest attrition?

SELECT
    recruitmentsource,
    COUNT(*) AS total_employees,
    SUM(termd) AS terminated_employees,
    ROUND(SUM(termd) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hrdataset_v14
GROUP BY recruitmentsource
HAVING COUNT(*) >= 5
ORDER BY attrition_rate_pct DESC;

-- Business Question 9:
-- How does employee engagement relate to attrition?

SELECT
    CASE
        WHEN engagementsurvey < 2 THEN '1-2'
        WHEN engagementsurvey < 3 THEN '2-3'
        WHEN engagementsurvey < 4 THEN '3-4'
        ELSE '4-5'
    END AS engagement_group,
    COUNT(*) AS total_employees,
    SUM(termd) AS terminated_employees,
    ROUND(SUM(termd) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hrdataset_v14
GROUP BY engagement_group
ORDER BY engagement_group;

-- Business Question 10:
-- Which managers have the highest employee turnover?

SELECT
    managername,
    COUNT(*) AS total_employees,
    SUM(termd) AS terminated_employees,
    ROUND(SUM(termd) * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM hrdataset_v14
GROUP BY managername
HAVING COUNT(*) >= 5
ORDER BY attrition_rate_pct DESC;

-- Business Question 11:
-- Are absences and lateness associated with attrition?

SELECT
    termd,
    ROUND(AVG(absences), 2) AS avg_absences,
    ROUND(AVG(dayslatelast30), 2) AS avg_days_late
FROM hrdataset_v14
GROUP BY termd;



