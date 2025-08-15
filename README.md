# SQL Automated Loan Eligibility System

##🚀Project Overview:

This project is a fully automated backend loan approval system powered by SQL Stored Procedures and Triggers. It evaluates loan applications in real-time based on key financial metrics—age, income, credit score, and requested loan amount—and instantly updates the application status upon data insertion.

Built using MySQL, Python, and Jupyter Notebook, the system ensures seamless decision-making with zero manual intervention.

##Eligibility Criteria Logic:

Loan applications are evaluated using this SQL rule:

```sql
 CASE
  WHEN Age >= 21 AND CreditScore >= 700 AND Income >= (LoanAmount * 0.4)
  THEN 'Approved'
  ELSE 'Rejected'
 END
```

🔧 Technologies Used

MySQL: Stored Procedures, Triggers, Relational Schema, Joins, Foreign Keys

Python: Pandas, MySQL Connector

Jupyter Notebook: Query Execution, Visualization

⚙️ Automation Features

✅ Stored Procedure: Encapsulates the eligibility logic

🔁 Trigger: Automatically invokes the procedure when new loan data is inserted

📊 Live Status Update: Loan status is instantly marked as 'Approved' or 'Rejected' in the database

##Outcome Summary:

Out of 40 loan applications:

 Approved                 31
 
 Rejected                  9

 New applications are evaluated instantly upon insertion!

🏁 How to Run This Project
🗃️ Create MySQL database: loan_system

📜 Execute schema.sql to build tables

⚙️ Run eleigibilty-check.sql to set up eligibility logic, stored procedures and triggers

📥 Insert new data manually or via loan-eligibility-check.ipynb

📓 Launch notebooks/loan_eligibility_check.ipynb to visualize results

