<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value="../../resources/css/style.css"/>"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<%@include file="../header.jsp"%>
<section class="form--steps">
    <div class="form--steps-instructions">
        <div class="form--steps-container">
            <h3>Ważne!</h3>
            <p data-step="1" class="active">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="2">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="3">
                Wybierz jedną, do
                której trafi Twoja przesyłka.
            </p>
            <p data-step="4">Podaj adres oraz termin odbioru rzeczy.</p>
        </div>
    </div>

    <div class="form--steps-container">
        <div class="form--steps-counter">Krok <span>1</span>/4</div>
        <!-- STEP 1: class .active is switching steps -->
        <form:form id="myForm" action="/form/add" method="post" modelAttribute="donation">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <div data-step="1" class="active">
            <h3>Zaznacz co chcesz oddać:</h3>
            <c:forEach items="${categories}" var="c">
                <div class="form-group form-group--checkbox">
                    <label>
                        <form:checkbox path="categories" value="${c.id}"/>
                        <span class="checkbox"></span>
                        <span class="description"><c:out value="${c.name}"/></span>
                    </label>
                </div>
            </c:forEach>
            <div class="form-group form-group--buttons">
                <button type="button" class="btn next-step">Dalej</button>
            </div>
        </div>

        <!-- STEP 2 -->
        <div data-step="2">
            <h3>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h3>

            <div class="form-group form-group--inline">
                <label>Liczba 60l worków:<form:input type="number" path="quantity"/></label>
            </div>

            <div class="form-group form-group--buttons">
                <button type="button" class="btn prev-step">Wstecz</button>
                <button type="button" class="btn next-step">Dalej</button>
            </div>
        </div>

        <!-- STEP 4 -->
        <div data-step="3">
            <h3>Wybierz organizacje, której chcesz pomóc:</h3>
            <c:forEach items="${institutions}" var="i">
                <div class="form-group form-group--checkbox">
                    <label>
                        <form:checkbox path="institution" value="${i.id}"/>
                        <span class="checkbox radio"></span>
                        <span class="description">
                  <div class="title"><c:out value="${i.name}"/></div>
                  <div class="subtitle">Cel i misja: <c:out value="${i.description}"/>
                  </div>
                </span>
                    </label>
                </div>
            </c:forEach>

            <div class="form-group form-group--buttons">
                <button type="button" class="btn prev-step">Wstecz</button>
                <button type="button" class="btn next-step">Dalej</button>
            </div>
        </div>

        <!-- STEP 5 -->
        <div data-step="4">
            <h3>Podaj adres oraz termin odbioru rzecz przez kuriera:</h3>

            <div class="form-section form-section--columns">
                <div class="form-section--column">
                    <h4>Adres odbioru</h4>
                    <div class="form-group form-group--inline">
                        <label> Ulica <form:input path="street"/> </label>

                    </div>

                    <div class="form-group form-group--inline">
                        <label> Miasto <form:input path="city"/> </label>
                    </div>

                    <div class="form-group form-group--inline">
                        <label> Kod pocztowy <form:input path="zipCode"/></label>
                    </div>

                </div>

                <div class="form-section--column">
                    <h4>Termin odbioru</h4>
                    <div class="form-group form-group--inline">
                        <label> Data <form:input type="date" path="pickUpDate"/> </label>
                    </div>

                    <div class="form-group form-group--inline">
                        <label> Godzina <form:input type="time" path="pickUpTime"/> </label>
                    </div>

                    <div class="form-group form-group--inline">
                        <label> Uwagi dla kuriera <form:textarea path="pickUpComment"/></label>
                    </div>
                </div>
            </div>
            <div class="form-group form-group--buttons">
                <button type="button" class="btn prev-step">Wstecz</button>
                <button type="button" class="btn next-step">Dalej</button>
            </div>
        </div>

        <!-- STEP 6 -->
        <div data-step="5">
            <h3>Podsumowanie Twojej darowizny</h3>

            <div id="summary"></div>

            <script src="<c:url value="../../resources/js/script.js"/>"></script>



            <div class="form-group form-group--buttons">
                <button type="button" class="btn prev-step">Wstecz</button>
                <button type="submit" class="btn">Potwierdzam</button>
            </div>
            </form:form>
        </div>


    </div>


</section>
<%@include file="../footer.jsp"%>

