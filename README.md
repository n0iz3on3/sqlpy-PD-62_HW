# Task 1. Music_DB. 
## Scheme DB music1
![](https://github.com/n0iz3on3/sqlpy-PD-62_HW-2/blob/main/SQLPY-62-HW-2-Page-1.drawio.png)

# Task 2. Employees_DB.
## Scheme DB employees
![](https://github.com/n0iz3on3/sqlpy-PD-62_HW-2/blob/main/Employee1.jpg)

## Commands

```sql
CREATE TABLE IF NOT EXISTS Employee (
	id SERIAL PRIMARY KEY,
	employee_name VARCHAR(60) NOT NULL,
	chief INTEGER REFERENCES Employee(id)
);

CREATE TABLE IF NOT EXISTS Position_e (
	id SERIAL PRIMARY KEY,
	position_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS EmployeePosition (
	position_id INTEGER REFERENCES Position_e(id),
	employee_id INTEGER REFERENCES Employee(id),
	CONSTRAINT ep PRIMARY KEY (position_id, employee_id)
);
```

## Scheme DB employees2
![](https://github.com/n0iz3on3/sqlpy-PD-62_HW-2/blob/main/Employee2.jpg)

