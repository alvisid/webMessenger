
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

<%--
    <div class="login_380_600">
        <div class="restangle_2_1"></div>
        <div class="ellipse_big"></div>
        <div class="pocket_messenger">Pocket Messenger</div>
        <div class="for_geeks_by_geeks">For geeks by geeks</div>
        <div class="ellipse_small"></div>
        <!--BEGIN OF FORM-->
        <form action="index" method="post">
            <input id="mail" type="text" placeholder="E-mail" name="name" required>
            <input id="pass" type="password" placeholder="Пароль" name = "pass" required>
            <input id="log_in" type="submit" value="Войти">
            <div class="forgot_pass"><a href="">Забыли пароль?</a></div> <!-- форма восстановления пароля -->
        </form>
        <!--END OF FORM-->
        <!--BEGIN OF REGISTRATION-->
        <div class="registration">Нет аккаунта?&nbsp;<a href="/add">Регистрация</a></div>
        <!--END OF REGISTRATION-->
    </div>--%>

</div>

<div align="center">
    <button onclick="location.href='/'">Cancel</button>
</div>

</body>
</html>
