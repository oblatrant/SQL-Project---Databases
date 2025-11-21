# 🎓 ACT Scores, Majors & Income Analysis (SQL Project from Databases: 304)

This project answers the question:

**“How do ACT scores, majors, and college plans (2-year vs. 4-year) affect early- and mid-career income?”**

## 📁 Data Sources

Data was collected from the official **ACT** website using three CSV files:

* Majors
* ACT scores (2-year + 4-year combined)
* Income for 2-year programs
* Income for 4-year programs

All tables connect through **MajorName** and use **MajorID** as the key in SQL.

## 🗄️ Database Design

* `Majors` is the primary table.
* `ACTScores`, `Income2Year`, and `Income4Year` reference `MajorID`.
* ACTScores and CollegePlan form a **many-to-many** relationship.
* Data import issues (NULL tables) were fixed by defining `MajorID` first and importing correct columns.

## 🧮 Queries

The main query uses:

* **LEFT JOINs** (include all majors)
* **UNION** (combine 2-year and 4-year income data)
* **ORDER BY MajorID**
* **SELECT** to pull ACT scores and income for comparison

## 📈 Results

The final output shows each major with its ACT scores and both early- and mid-career pay across 2-year and 4-year programs.
