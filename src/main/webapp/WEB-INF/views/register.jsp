<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value="../../resources/css/style.css"/>"/>
</head>
<body>
<header>
    <nav class="container container--70">
        <ul class="nav--actions">
            <li><a href="#">Zaloguj</a></li>
            <li class="highlighted">
                <a href="#">Załóż konto</a></li>
        </ul>

        <ul>
            <li><a href="index.jsp" class="btn btn--without-border active">Start</a></li>
            <li><a href="index.html#steps" class="btn btn--without-border">O co chodzi?</a></li>
            <li><a href="index.html#about-us" class="btn btn--without-border">O nas</a></li>
            <li><a href="index.html#help" class="btn btn--without-border">Fundacje i organizacje</a></li>
            <li><a href="index.html#contact" class="btn btn--without-border">Kontakt</a></li>
        </ul>
    </nav>
</header>
<section class="login-page">
    <h2>Załóż konto</h2>
    <form:form action="/user/register" method="post" modelAttribute="register">

        <div class="form-group">
            <form:input type="text" name="username" placeholder="Imię" path="username"/>
        </div>

        <div class="form-group">
            <form:input type="text" name="surname" placeholder="Nazwisko" path="surname"/>
        </div>

        <div class="form-group">
            <form:input type="email" name="email" placeholder="Email" path="email"/>
        </div>

        <div class="form-group">
            <form:input type="password" name="password" placeholder="Hasło" path="password"/>
        </div>

        <div class="form-group">
            <form:input type="password" name="password2" placeholder="Powtórz hasło" path="passwordConfirm" />
        </div>

        <div class="form-group form-group--buttons">
            <a href="login.html" class="btn btn--without-border">Zaloguj się</a>
            <button class="btn" type="submit">Załóż konto</button>
        </div>
    </form:form>
</section>

<footer>
    <div class="contact">
        <h2>Skontaktuj się z nami</h2>
        <h3>Formularz kontaktowy</h3>
        <form>
            <div class="form-group form-group--50">
                <input type="text" name="name" placeholder="Imię" />
            </div>
            <div class="form-group form-group--50">
                <input type="text" name="surname" placeholder="Nazwisko" />
            </div>

            <div class="form-group">
            <textarea
                    name="message"
                    placeholder="Wiadomość"
                    rows="1"
            ></textarea>
            </div>

            <button class="btn" type="submit">Wyślij</button>
        </form>
    </div>
    <div class="bottom-line">
        <span class="bottom-line--copy">Copyright &copy; 2018</span>
        <div class="bottom-line--icons">
            <a href="#" class="btn btn--small"
            ><img src="<c:url value="/resources/images/icon-facebook.svg" />"/></a>
            <a href="#" class="btn btn--small"
            ><img src="<c:url value="/resources/images/icon-instagram.svg"/>"/></a>
        </div>
    </div>
</footer>
</body>
</html>
