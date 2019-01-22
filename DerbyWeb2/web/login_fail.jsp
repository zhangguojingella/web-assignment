<%-- 
    Document   : index
    Created on : Sep 22, 2009, 3:21:07 PM
    Author     : spring
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <style>
h1{
    font-family: Arial;
    text-align: center;
    color:white;
    font-size: 50px;
}
h2{
    font-family: Arial;
    color:White;
    font-size: 25px;
}
td{
    font-family: Arial;
    color:White;
    font-size: 15px;
}
body{
background: pink;
}
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login fail</title>
        <jsp:useBean id="ub" class="mbs.User" scope="session" />
    </head>
    <body>
        <h1>Login Fail, please try again</h1>
        <h2>Please login:</h2>
        <form method = "post" action="Login" id="loginfrm">
            <input type="hidden" name="log" />
            <table border="1">
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="username" id="username" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" id="password" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" name="Login" value="Login" id="submit" /></td>
                    </tr>
                </tbody>
            </table>
        </form>

    </body>
</html>
