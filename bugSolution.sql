```sql
-- Improved query with error handling (using PostgreSQL's exception handling as example)
DO $$ 
DECLARE 
  employee_record RECORD; 
BEGIN 
  FOR employee_record IN 
    SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 
  LOOP 
    -- Process employee record 
    RAISE NOTICE 'Employee found: %', employee_record; 
  END LOOP; 
  IF NOT FOUND THEN 
    RAISE NOTICE 'No employees found in Sales department with salary greater than 100000'; 
  END IF; 
END $$;

--Alternative solution using a COUNT check
SELECT CASE WHEN COUNT(*) > 0 THEN 'Employees found' ELSE 'No employees found' END AS message FROM employees WHERE department = 'Sales' AND salary > 100000;
```