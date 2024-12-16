```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This SQL query might cause unexpected behavior if there are no employees in the 'Sales' department with a salary greater than 100000.  In some database systems, this could lead to a silent failure where an empty result set is returned without any error message, making it difficult to debug if the intention was to handle this scenario differently (perhaps by displaying a message indicating no matching records, or defaulting to some value).