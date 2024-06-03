%dw 2.0
output application/json
var data = readUrl("classpath://data/employees.csv","application/csv",{"header":true, "ignoreEmptyLine":true, "headerLineNumber":0})
var empId = attributes.uriParams."employeeId"
---
((data filter ($.EMPLOYEE_ID == empId))[0]) default {}