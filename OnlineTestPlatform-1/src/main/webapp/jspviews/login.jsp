<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html>
    <head>
        <title>
            Exams | login
        </title>
       
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            .container{
                display: flex;
                height: 100vh;
            }

            .left-container{
                height: 100%;
                width: 49%;
                background-image: url("https://images.unsplash.com/photo-1606326608606-aa0b62935f2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80");
            background-size: cover;
            }
            .right-container{
                height: 100%;
                width: 49%;
                
            }
            .login-container{
                margin-top: 35%;
                margin-right: auto;
                margin-left: auto;
            
                width: 350px;
            }

            h3{
                font-size: 1.5em;
                margin-bottom: 1rem;
            }
            label{
                font-size: 1em;
            }
            p{
                font-size: 1em;
            }
            input{
                margin-top: 0.5rem;
                border: 0.5px solid rgb(121, 121, 121);
                border-radius: 5px;
                width: 100%;
                height: 2.5rem;
                padding:0.5rem;
            }

            input[type="submit"]{
                margin-top: 1rem;
                border: none;
                background-color: rgb(170, 247, 170);
            }
        </style>
    </head>
    <body>

        <div class="container">
            <div class="left-container" >

            </div>
            <div class="right-container">
                <div class="login-container">
                    <p>Welcome back!</p>
                    <h3>Login to your account</h3>
                    <form method="post" action="loginAction">
                        <label>Email Address</label><br>
                        <input type="text" id="email" name="username">
                        <div class="error error-email"></div>
                        <label>password</label><br>
                        <input type="password" id="password" name="password">
                        <div class="error error-contact"></div> 
                        <input type="submit" name="submit" value="login"/>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>