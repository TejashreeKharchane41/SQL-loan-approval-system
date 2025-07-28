-- checking eligibility 

USE loan_system;

SELECT 
    c.Name,
    c.Age,
    ch.CreditScore,
    c.Income,
    l.LoanAmount,
    CASE
        WHEN c.Age >= 21 AND ch.CreditScore >= 700 AND c.Income >= (l.LoanAmount * 0.4)
        THEN 'Approved'
        ELSE 'Rejected'
    END AS EligibilityStatus
FROM Customers c
JOIN CreditHistory ch ON c.CustomerID = ch.CustomerID
JOIN LoanApplications l ON c.CustomerID = l.CustomerID;


