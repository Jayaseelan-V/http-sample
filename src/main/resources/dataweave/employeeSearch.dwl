%dw 2.0
output application/json
var data = readUrl("classpath://data/employees.csv","application/csv",{"header":true, "ignoreEmptyLine":true, "headerLineNumber":0})
var empName = attributes.queryParams."name"
---
(data filter ($.FIRST_NAME == empName)) default []