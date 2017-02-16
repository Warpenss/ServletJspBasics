<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Shop Page</title>
    </head>

    <body>
        <form method=POST action="cart.jsp">
            Select item to add:

            <select name="items" title="Items">
                <option>Couch Natali
                <option>Couch Jocker
                <option>Sofa Elli
                <option>Table T-10
                <option>Table T-11
                <option>Chair Oak
                <option>Chair Pine
            </select>

            <input type="submit" name="submit" value="add">
            <input type="submit" name="submit" value="remove">
        </form>
    </body>
</html>
