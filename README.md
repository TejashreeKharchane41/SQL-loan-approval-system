# SQL-loan-approval-system

This project simulates a backend loan approval system using SQL and Python. It evaluates customer eligibility based on age, income, credit score, and requested loan amount—using dynamic SQL logic and integrated analysis via Jupyter Notebook.

**Eligibility Criteria Logic**

Loan applications are evaluated using this SQL rule:

```sql
 CASE
  WHEN Age >= 21 AND CreditScore >= 700 AND Income >= (LoanAmount * 0.4)
  THEN 'Approved'
  ELSE 'Rejected'
 END
```

**Technologies Used**
MySQL (Relational Schema, Joins, Foreign Keys)

Python: Pandas, MySQL Connector

Jupyter Notebook: Query Execution & Visualization

**Outcome Summary**
Out of 40 loan applications:

     Status  TotalApplications
0  Approved                 31
1  Rejected                  9

**To Run This Project**
Create MySQL database loan_system

Execute schema.sql to build tables

Insert data manually or via data_insert.sql

Run notebooks/eligibility_query.ipynb to check prediction

