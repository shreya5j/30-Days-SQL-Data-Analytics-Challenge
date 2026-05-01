 DROP TABLE USERS;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
('Aarav', 'aarav@example.com', 'Male', '1995-05-14', 65000.00),
('Ananya', 'ananya@example.com', 'Female', '1990-11-23', 72000.00),
('Raj', 'raj@example.com', 'Male', '1988-07-30', 81000.00),
('Sneha', 'sneha@example.com', 'Female', '1992-09-15', 50000.00),
('Karan', 'karan@example.com', 'Male', '1985-02-12', 91000.00),
('Priyanka', 'priyanka@example.com', 'Female', '1995-07-22', 84000.00),
('Aisha', 'aisha@example.com', 'Female', '1997-03-25', 56000.00),
('Aditya', 'aditya@example.com', 'Male', '1992-06-17', 60000.00),
('Neera', 'neera@example.com', 'Female', '1989-12-05', 77000.00),
('Ishaan', 'ishaan@example.com', 'Male', '1991-10-02', 45000.00),
('Tanvi', 'tanvi@example.com', 'Female', '1994-08-18', 62000.00),
('Rohan', 'rohan@example.com', 'Male', '1986-12-01', 75000.00),
('Zoya', 'zoya@example.com', 'Female', '1998-04-15', 54000.00),
('Karan2', 'karan2@example.com', 'Male', '1990-08-22', 68000.00),
('Nikita', 'nikita@example.com', 'Female', '1987-03-18', 71000.00),
('Pooja', 'pooja@example.com', 'Female', '1993-11-09', 65000.00),
('Divya', 'divya@example.com', 'Female', '1991-02-28', 57000.00),
('Deepak', 'deepak@example.com', 'Male', '1985-05-17', 88000.00),
('Ritika', 'ritika@example.com', 'Female', '1996-05-05', 52000.00),
('Arjun', 'arjun@example.com', 'Male', '1995-07-30', 63000.00),
('Jai', 'jai@example.com', 'Male', '1992-04-14', 58000.00),
('Tushar', 'tushar@example.com', 'Male', '1990-01-08', 73000.00),
('Lata', 'lata@example.com', 'Female', '1984-11-11', 78000.00),
('Yash', 'yash@example.com', 'Male', '1997-06-06', 60000.00),
('Fatima', 'fatima@example.com', 'Female', '1993-03-03', 55000.00);

-- view all users
SELECT * FROM USERS;

-- filter queries
SELECT * FROM users WHERE salary > 60000; 

SELECT * FROM users WHERE gender = 'female' OR id >= 11;

SELECT * FROM users
ORDER BY ID DESC
LIMIT 3;
 
SELECT * FROM users WHERE gender = 'Female' AND salary > 60000;

SELECT * FROM users WHERE salary BETWEEN 50000 AND 70000;

SELECT * FROM users WHERE name LIKE 'A%'; 


