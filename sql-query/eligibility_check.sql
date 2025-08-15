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

-- Automating the process by using stored procedure

DELIMITER //

CREATE PROCEDURE EvaluateEligibility(IN cust_id INT)
BEGIN
    DECLARE age INT;
    DECLARE credit INT;
    DECLARE income DECIMAL(10,2);
    DECLARE loan DECIMAL(10,2);
    DECLARE status VARCHAR(10);
    DECLARE loan_id INT;

    SELECT c.Age, ch.CreditScore, c.Income, l.LoanAmount, l.LoanID
    INTO age, credit, income, loan, loan_id
    FROM Customers c
    JOIN CreditHistory ch ON c.CustomerID = ch.CustomerID
    JOIN LoanApplications l ON c.CustomerID = l.CustomerID
    WHERE c.CustomerID = cust_id;

    SET status = CASE
        WHEN age >= 21 AND credit >= 700 AND income >= (loan * 0.4)
        THEN 'Approved'
        ELSE 'Rejected'
    END;

    INSERT INTO EligibilityResults (LoanID, EligibilityStatus)
    VALUES (loan_id, status);
END //

DELIMITER ;

-- trigger 

DELIMITER //

CREATE TRIGGER AutoEvaluateEligibility
AFTER INSERT ON LoanApplications
FOR EACH ROW
BEGIN
    CALL EvaluateEligibility(NEW.CustomerID);
END //

DELIMITER ;



