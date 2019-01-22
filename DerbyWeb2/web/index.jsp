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
p.xixi {
    font-family: Arial;
    color:red;
    font-size: 10px;
}
body{
background: pink;
}
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Homework 3</title>
    </head>
    <body>
        <h1>Welcome to the website.</h1>
        <h2>Please log in:</h2>
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
                        <td><input type="submit" name="Login" value="Submit" id="submit" /></td>
                    </tr>
                </tbody>
            </table>
           </form>
        <p class="xixi">Hint: The correct ID and password is:</p>
        <p class="xixi">xixi</p>
        <p class="xixi">xixi</p>
    </body>
</html>
