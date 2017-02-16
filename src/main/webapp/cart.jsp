<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Shop Cart</title>
    </head>

    <body>
    <jsp:useBean id="cart" scope="session" class="main.webapp.MyBean" />

    <jsp:setProperty name="cart" property="*" />

    <%
        cart.processRequest(request);
    %>

    Items in your cart:
    <%
        String[] items = cart.getItems();
        for (int i = 0; i < items.length; i++) {
            out.print(main.webapp.HTMLFilter.filter(items[i]));
        }
    %>
    </body>
</html>
