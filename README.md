# HR Attrition Analysis — What Drives Employee Attrition?

## Project Summary

This project analyzes employee attrition patterns using SQL for data aggregation and Power BI for visualization.

The analysis explores how department, tenure, performance, satisfaction, salary, recruitment source, management, and attendance relate to employee turnover. The goal is not only to identify statistical relationships, but also to demonstrate how HR domain expertise can improve the interpretation of workforce data and prevent misleading conclusions.

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

- **DBeaver** — SQL querying and data exploration
- **SQL** — attrition rate calculations and business question analysis
- **Power BI** — dashboard development and visualization
- **DAX** — KPI and attrition rate calculations
- **Power Query** — data preparation and transformation

---

## Approach

Attrition metrics were calculated directly in SQL for each business question. Results were then visualized in Power BI through a three-page dashboard designed to answer three key questions:

- **Overview** — What is happening?
- **Workforce** — Why is it happening?
- **Operational** — Where should the organization investigate further?

---

## Dashboard Features

- **Synchronized department slicer** across all dashboard pages
- Custom tooltips displaying Total Employees
- Interactive cross-filtering between visualizations
- Multi-page navigation
- Dynamic KPI calculations using DAX

---

## Key Insights

### 1. Attrition Is Concentrated During the Early Employee Lifecycle

Employees with less than one year of tenure experienced an attrition rate of 90.0% (9 out of 10 employees). Attrition remained elevated at 63.0% among employees with one to three years of service (34 out of 54 employees), compared to 21.1% among employees with more than five years of tenure (26 out of 123 employees).

The findings suggest that turnover risk is concentrated during the first years of employment rather than being limited to initial onboarding.

**Business implication:** The organization may be losing employees before realizing the full return on recruitment, onboarding, and training investments.

---

### 2. Recruitment Outcomes Should Be Evaluated Beyond Hiring Volume

Attrition rates varied significantly across recruitment sources, ranging from 7.7% for Website hires to 61.2% for Google Search hires.

At first glance, Google Search appeared to be the least effective recruitment source. However, additional analysis revealed that 87.8% of employees hired through Google Search were Production Technicians. This suggests that the observed attrition is at least partially influenced by workforce composition rather than recruitment source effectiveness alone.

**Business implication:** Recruitment effectiveness should be measured using quality-of-hire and retention outcomes, not hiring volume alone.

---

### 3. Attrition Risk Is Concentrated Within Specific Workforce Segments

The Production department demonstrated the highest attrition rate among large workforce groups, reaching 39.7% across 209 employees. Although Software Engineering also showed elevated attrition (36.4%), the department consisted of only 11 employees, and the result should therefore be interpreted with caution.

**Business implication:** Company-wide retention initiatives may be less effective than targeted interventions focused on high-risk workforce segments.

---

### 4. Compensation Appears Related to Retention, but Is Unlikely to Be the Primary Driver

Lower-paid employee groups generally demonstrated higher attrition rates than higher-paid employee groups.

**Business implication:** Compensation should be evaluated as part of a broader retention strategy rather than as a standalone solution.

---

### 5. Behavioral Indicators May Help Identify Emerging Retention Risk

Employees who left the organization demonstrated higher levels of lateness than active employees.

**Business implication:** Workforce monitoring should focus not only on outcomes but also on leading indicators of employee disengagement.

---

## Business Interpretation

The analysis suggests that employee turnover should be viewed primarily as an early employee lifecycle challenge rather than a compensation challenge alone.

The strongest attrition patterns were observed during the first three years of employment. The findings also indicate that retention challenges are not distributed evenly across the organization and may reflect a combination of workforce composition, role characteristics, management practices, employee experience, and organizational factors.

The recruitment-source analysis provides an important example of why HR analytics should move beyond surface-level interpretation. What initially appeared to be a recruitment-channel problem was, after additional investigation, largely associated with a specific workforce segment.

Overall, the results suggest that employee turnover is best understood as a multifactor workforce issue requiring targeted analysis and intervention rather than a single organization-wide solution.

---

## Recommendations

1. **Review the First Three Years of the Employee Experience**  
   Conduct a structured review of recruitment, onboarding, probation, role development, and manager integration processes.

2. **Introduce Quality-of-Hire Metrics**  
   Evaluate recruitment channels using hiring volume, retention outcomes, and employee performance measures.

3. **Prioritize High-Risk Workforce Segments**  
   Focus retention analysis and intervention efforts on workforce groups demonstrating elevated attrition levels, particularly within Production and other operational roles.

4. **Investigate Workforce Composition Drivers**  
   Conduct additional analysis within departments and job families to distinguish correlation from underlying causes.

5. **Monitor Leading Indicators of Turnover Risk**  
   Track attendance, engagement, satisfaction, and other workforce indicators that may signal emerging retention challenges.

---

## Dashboard Preview

The dashboard is structured around three business questions commonly used in workforce analytics and HR decision-making.

### Overview — What is happening?
Provides a high-level view of workforce attrition, including overall attrition rate, department-level turnover patterns, and key workforce metrics.

<img src="dashboard_overview.png" width="1000">

### Workforce — Why is it happening?
Explores the relationship between attrition and employee characteristics such as tenure, engagement, satisfaction, performance, compensation, and recruitment source.

<img src="dashboard_workforce.png" width="1000">

### Operational — Where should the organization investigate further?
Focuses on manager-level turnover patterns, attendance indicators, and workforce segments requiring additional review.

<img src="dashboard_operational.png" width="1000">

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
- Workforce segmentation and analysis

### Power BI
- Interactive dashboard development
- KPI visualization
- Multi-page report design
- Report navigation
- Slicers and interactive filtering
- Custom tooltips
- Data storytelling

### DAX
- Attrition rate calculations
- KPI measures
- Custom metrics

### Power Query
- Data preparation
- Data transformation

### Business Analytics
- Translating business questions into analytical frameworks
- Workforce segmentation and retention analysis
- Identifying workforce trends and attrition drivers
- Developing data-driven HR recommendations

---

## Conclusion

This project demonstrates how HR data can be used to identify workforce retention risks and support evidence-based decision-making.

By combining SQL, Power BI, DAX, and HR analytics principles, the project demonstrates a complete analytical workflow—from business questions and data preparation to insight generation, interpretation, and actionable workforce recommendations.
