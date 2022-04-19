<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>  
<head>  
<title>Marks</title>  
<style>
 header{
		 display:flex;
		 justify-content:space-between;
		 background-color: rgb(248, 205, 152);
        box-shadow: 20px 20px 50px rgb(255, 231, 231);
        padding: 1rem;
 }

    .container{
        display: flex;
        padding: 3rem;
    }
    .left{
        width: 49%;
        padding:2rem;
        background-color: antiquewhite;
    }
    .right{
        width: 49%;
        padding:2rem;
        background-color:blanchedalmond;
    }

    p{
        font-size: 2em;
        color: black;
    }

    h2{
        color: black;
        font-size:3em;
    }
    input{
	    border:none;
	    padding:1rem;
	    background-color:#ff5f5f;
    }
    #logout{
      border:none;
	    padding:1rem;
    	background-color: #ff5f5f;
    	    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    	
    }
    .lb{
    padding: 3rem;
    }
    table {
	  font-family: arial, sans-serif;
	  border-collapse: collapse;
	  width: 100%;
	}
	
	td, th {
	  border: 1px solid #000;
	  text-align: left;
	  padding: 8px;
	  
	}
	tr:nth-child(odd) {
	  background-color: blanchedalmond;
	}
	tr:nth-child(even) {
	  background-color: antiquewhite;
	}
</style>
</head>  
<body>  
   <header>
        <h1>JAVA MCQ ONLINE TEST</h1>
        <form method="post" action="logout">
        <input id="logout" type="submit" value="logout">
    </form>
    </header>
    <div class="container">
        <div class="left">
        <p>Hi ${username},</p>
        <p>you have csuccessfully completed the test</p>
        <p>your score is-></p>
        <form method="post" action="retake">
        <input type="submit" value="retake test">
        </form>
    </div>
    <div class="right">
        <h2>${mark}/10</h2>
    </div>
    </div>
    <div class="lb">
    <h2>Leader Board</h2>

	<table>
	  <tr>
	    <th>Name</th>
	    <th>Mark</th>
	  </tr>
	  
	  <c:forEach items = "${leaderboard}" var = "lb">  
    
        <tr>
		    <td>${lb.accname}</td>
		    <td>${lb.marks}</td>
		    
	  	</tr>
        
    
	</c:forEach> 
	</table>
	</div>
    
    
</body>  
</html>  