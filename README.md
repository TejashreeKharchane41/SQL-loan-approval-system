# SQL-loan-approval-system

**Project Overview:**

This project simulates a backend loan approval system using SQL and Python. It evaluates customer eligibility based on age, income, credit score, and requested loan amount—leveraging dynamic SQL logic and integrated analysis via Jupyter Notebook.


**Eligibility Criteria Logic:**

Loan applications are evaluated using this SQL rule:

```sql
 CASE
  WHEN Age >= 21 AND CreditScore >= 700 AND Income >= (LoanAmount * 0.4)
  THEN 'Approved'
  ELSE 'Rejected'
 END
```

**Technologies Used:**

MySQL (Relational Schema, Joins, Foreign Keys)

Python: Pandas, MySQL Connector

Jupyter Notebook: Query Execution & Visualization

**Outcome Summary:**

Out of 40 loan applications:

 Approved                 31
 
 Rejected                  9

**To Run This Project:**

Create MySQL database loan_system

Execute schema.sql to build tables

Insert data manually or via dataset.sql

Run notebooks/loan_eligibility_check.ipynb to check prediction

