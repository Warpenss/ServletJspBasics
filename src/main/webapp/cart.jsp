<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <form action="order.jsp" type="post">
        Ваш выбор: <%=request.getParameter("submitbutton")%>
        Ваше имя: <br>
        <input name="firstname" type="text" size="40">
        Ваша фамилия: <br>
        <input name="lastname" type="text" size="40">
        Ваш email: <br>
        <input name="email" type="text" size="40">
        Ваш номер телефона: <br>
        <input name="phone" type="text" size="40">
        Ваш адрес: <br>
        <input name="address" type="text" size="40">

        <button name="accept" type="submit" value="Couch Nicol">Accept</button>

    </form>
</html>