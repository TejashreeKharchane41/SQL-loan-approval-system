CREATE DATABASE loan_system;
USE loan_system;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT CHECK (Age >= 18),
    Income DECIMAL(10, 2)
);

CREATE TABLE CreditHistory (
    HistoryID INT PRIMARY KEY,
    CustomerID INT,
    CreditScore INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE LoanApplications (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10,2),
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE EligibilityResults (
    ResultID INT AUTO_INCREMENT PRIMARY KEY,
    LoanID INT,
    EligibilityStatus VARCHAR(10),
    EvaluationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (LoanID) REFERENCES LoanApplications(LoanID)
);
