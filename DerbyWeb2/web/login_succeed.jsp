<%@page contentType="text/html" pageEncoding="windows-1252"%>
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
p.miao {
    font-family: Arial;
    color:red;
    font-size: 25px;
}
body{
background: pink;
}
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login succeed</title>
        <jsp:useBean id="ub" class="mbs.User" scope="session" />
    </head>
    <body>
        <h1>Welcome
        <jsp:getProperty name="ub" property="username" />
        </h1>
        <p class="miao">Your have successfully logined in!</p>
    </body>
</html>
