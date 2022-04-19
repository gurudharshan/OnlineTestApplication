<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>  
<head>  
<title>Core Tag Example</title>  
<style>
    h1{
        padding: 2rem;
        background-color: rgb(248, 205, 152);
        box-shadow: 20px 20px 50px rgb(255, 231, 231);
    }
    div{
        padding: 1rem;
        margin: 0.5rem;
    }
    p{
        padding: 1rem;
        background-color: bisque;
        border: 1px solid rgb(255, 254, 183);
        color: black;
    }
    
    #submit{
    border:none;
    padding:1rem;
    background-color:#b0ffb0;
    margin: 2rem;
    width: 100px;
    }


</style>
</head>  
<body>  
    <header>
        <h1>JAVA MCQ ONLINE TEST</h1>
    </header>
    <form method="post" action="markpage">
    <input name="questionstarts" value="${mcqs[0].id}" type="hidden"/>
<c:forEach items = "${mcqs}" var = "mcq">  
    <div class="container">
        <p>"${mcq.question}"</p>
        <input type="radio" name="${mcq.id}" value="${mcq.option1}"/>
        <label>${mcq.option1}</label>
        <input type="radio" name="${mcq.id}" value="${mcq.option2}"/>
         <label>${mcq.option2}</label>
        <input type="radio" name="${mcq.id}" value="${mcq.option3}"/>
         <label>${mcq.option3}</label>
        <input type="radio" name="${mcq.id}" value="${mcq.option4}"/>
         <label>${mcq.option4}</label>
        
    </div> 
</c:forEach> 
<input id="submit" type="submit" value="submit"/>
</form> 
</body>  
</html>  