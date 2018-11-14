
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new user</title>
</head>
<body>

<div>
    <%
        if(request.getAttribute("userName") != null){
            out.println("<p> User " + request.getAttribute("userName") + " added!</p>");
        }
    %>
</div>
<div align="center">
    <div>
        <h2>ADD USER</h2>
    </div>
<%--
//TODO: Добавил проверку на валидность данных. Но возможно этот пункт можно улучшить. Хапёрский Павел.
--%>
    <form action="index" method="post">
        <p>
            <%--<label for="name">Name:--%>
            <input id="name" type="text" charset="UTF-8" placeholder="Имя" title="Введите имя." name="name" required pattern="[0-9a-zA-Zа-яА-ЯёЁ.,\- ]+">
            <%--</label>--%>
        </p>
        <p>
            <%--<label>Ваш E-mail--%>
            <input type="email" charset="UTF-8" name="email" placeholder="Введите E-mail" pattern="([A-z0-9_.-]{1,})@([A-z0-9_.-]{1,}).([A-z]{2,8})" title="Введите электронный адрес(email)" required/>
            <%--</label>--%>
        </p>
        <p>
            <%--<label for="pass">Password:</label>--%>
            <input type="password" charset="UTF-8" placeholder="Введите пароль" title="Введите пароль." name = "pass" required>
        </p>
        <p>
            <%--<label for="pass">Password confirmation:</label>--%>
            <input id="pass" charset="UTF-8" type="password" placeholder="Введите пароль повторно" title="Введите пароль повторно." name = "pass" required>
        </p>
        <button type="submit">Submit</button>
    </form>
    
</div>

<div align="center">
    <button onclick="location.href='/'">Cancel</button>
</div>

</body>
</html>
