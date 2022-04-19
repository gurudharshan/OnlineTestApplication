<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <html>
        <head>
            <title>spring boot form submit example</title>
        </head>
        <body>
        <h2>Employee Details</h2>
        <form method="post" action="saveDetails">   // saveDetails url mapping in EmployeeController
            Enter Employee Name : <input type="text" name="employeeName"/>
            Enter Employee Email Address: <input type="email" name="employeeEmail">
            <input type="submit" value="Submit">
        </form>
        </body>
        </html>