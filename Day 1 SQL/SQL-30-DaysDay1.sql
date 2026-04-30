  use sql_day1;
 CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 );

 
  SELECT * FROM users;
  INSERT INTO users (name, email, gender, date_of_birth) VALUES
  ('Charlie', 'charlie@example.com', 'Other', '1988-02-17'),
  ('David', 'david@example.com', 'Male', '2000-08-09'),
  ('Eva', 'eva@example.com', 'Female', '1993-12-30');

 SELECT * FROM users;
 SELECT * FROM users WHERE gender = 'Male';