# HR Attrition Analysis — What Drives Employee Attrition?

## Project Summary

This project analyzes employee attrition patterns using SQL for data aggregation and Power BI for visualization.

The analysis explores how department, tenure, performance, satisfaction, salary, recruitment source, management, and attendance relate to employee turnover.

The goal is to identify key drivers of attrition and demonstrate how HR data can support evidence-based workforce decisions.

---

## Dataset

- **Source:** HRDataset_v14 by Dr. Rich Huebner (public HR dataset)
- **Records:** 311 employees
- **Fields Used:** Department, Position, DateOfHire, DateOfTermination, Termd, PerformanceScore, EmpSatisfaction, EngagementSurvey, Salary, RecruitmentSource, ManagerName, Absences, DaysLateLast30

---

## Business Questions

1. What is the overall employee attrition rate?
2. What is the attrition rate by department?
3. What is the attrition rate by job role?
4. How does employee tenure relate to attrition?
5. Does employee performance affect attrition?
6. Does employee satisfaction affect attrition?
7. Does salary affect attrition?
8. Which recruitment sources are associated with the highest and lowest attrition?
9. How does employee engagement relate to attrition?
10. Which managers have the highest employee turnover?
11. Are absences and lateness associated with attrition?

---

## Tools Used

- **MySQL** — data storage and SQL querying
- **SQL** — attrition rate calculations and business question analysis
- **Power BI** — dashboard development and visualization
- **DAX** — KPI and attrition rate calculations
- **Power Query** — data preparation and transformation

---

## Approach

Attrition rate and related metrics were calculated directly in SQL for each business question, including:

- Overall attrition rate
- Attrition by department
- Attrition by position
- Attrition by tenure group
- Attrition by performance score
- Attrition by employee satisfaction
- Attrition by salary band
- Attrition by recruitment source
- Attrition by manager
- Attrition by engagement level

Additional analysis was performed to evaluate attendance indicators such as absences and lateness.

The SQL outputs were then visualized in Power BI through a three-page dashboard designed to answer three key questions:

- **Overview:** What is happening?
- **Workforce:** Why is it happening?
- **Operational:** Where should the organization investigate further?

---

## Key Insights

### 1. Early Tenure Is the Strongest Attrition Risk Factor

Employees with less than one year of tenure demonstrated an attrition rate of **90.0%**, compared to **21.1%** among employees with more than five years of tenure.

This represents the strongest relationship observed in the analysis and suggests that turnover risk is heavily concentrated during the early stages of employment.

### 2. Recruitment Source Quality Appears Strongly Associated With Retention

Attrition rates varied significantly across recruitment channels, ranging from **7.7%** for Website hires to **61.2%** for Google Search hires.

The findings suggest that recruitment effectiveness should be evaluated not only by hiring volume but also by long-term retention outcomes.

### 3. Attrition Is Concentrated in Specific Departments

Production and Software Engineering reported the highest attrition rates among departments.

This indicates that turnover challenges are not distributed evenly across the organization and may require targeted departmental investigation.

### 4. Team-Level Differences Suggest a Potential Management Effect

Attrition rates varied substantially across managers.

While the analysis does not establish causation, the results indicate meaningful differences in retention outcomes between teams and highlight areas for further review.

### 5. Compensation May Influence Retention, but the Relationship Is Weaker Than Tenure

Lower salary groups generally experienced higher attrition than higher-paid employee groups.

Although compensation appears associated with retention outcomes, its impact is less pronounced than employee tenure.

### 6. Attendance Indicators May Serve as Early Warning Signals

Terminated employees demonstrated higher levels of lateness than active employees.

This suggests that attendance-related metrics may provide useful signals for identifying potential retention risks.

---

## Business Interpretation

### Workforce Stability Challenges Occur Primarily During the First Years of Employment

The analysis suggests that retention risks are concentrated in the early stages of the employee lifecycle, indicating that onboarding, role expectations, and early employee experience may require additional attention.

### Hiring Effectiveness Should Be Evaluated Beyond Recruitment Volume

Large differences between recruitment sources suggest that hiring success should be measured not only by candidate acquisition but also by long-term retention outcomes.

### Attrition Is Unlikely to Be Driven by a Single Factor

The results indicate that employee turnover is associated with a combination of tenure, department, compensation, engagement, and team-level characteristics rather than a single underlying cause.

### Retention Outcomes Differ Across Organizational Units

Variations across departments, positions, and managers suggest that workforce challenges may require localized interventions rather than organization-wide solutions.

---

## Recommendations

### Priority 1: Strengthen First-Year Retention Programs

Given the exceptionally high attrition rate among employees with less than one year of tenure, organizations should review onboarding practices, probation-period support, manager check-ins, and role expectation alignment.

### Priority 2: Introduce Retention-Based Recruitment Metrics

Evaluate recruitment channels not only by hiring volume but also by employee retention outcomes after 6–12 months.

### Priority 3: Conduct Targeted Department-Level Retention Reviews

Focus on departments with elevated attrition rates to identify operational, workload, compensation, career development, or employee experience issues.

### Priority 4: Investigate Team-Level Retention Differences

Review employee feedback, engagement data, and management practices in teams with unusually high turnover.

### Priority 5: Monitor Leading Indicators of Disengagement

Track attendance, lateness, engagement, and satisfaction metrics as potential indicators of future turnover risk.

---

## Dashboard Preview

### Overview

![Dashboard Overview](images/dashboard_overview.png)

### Workforce

![Dashboard Workforce](images/dashboard_workforce.png)

### Operational

![Dashboard Operational](images/dashboard_operational.png)

---

## Files in This Repository

- `hr_attrition_analysis.sql` — SQL queries used to answer the 11 business questions
- `HR_Attrition_Dashboard.pbix` — interactive Power BI dashboard
- `README.md` — project documentation

---

## Skills Demonstrated

### HR Analytics

- Employee attrition analysis
- Retention metrics
- Workforce analytics
- HR KPI development
- Evidence-based HR decision support

### SQL

- Aggregation and grouping (`GROUP BY`)
- Conditional logic (`CASE WHEN`)
- Date calculations (`DATEDIFF`)
- Data transformation
- Business-focused analytical queries

### Power BI

- Interactive dashboard development
- KPI visualization
- Multi-page report design
- Data storytelling

### DAX

- Attrition rate calculations
- KPI measures
- Custom metrics

### Power Query

- Data preparation
- Data transformation
- Data type management

### Business Analytics

- Translating business questions into analytical frameworks
- Identifying workforce trends and retention risks
- Developing data-driven recommendations

---

## Conclusion

This project demonstrates how HR data can be used to identify employee retention risks and support workforce decision-making.

The analysis found that attrition is primarily concentrated among employees with short tenure, while recruitment source, department, compensation, engagement, and team-level characteristics appear to influence long-term retention outcomes.

By combining SQL, Power BI, DAX, and HR domain knowledge, the project illustrates a complete HR Analytics workflow—from business questions and data preparation to insight generation and actionable recommendations.
