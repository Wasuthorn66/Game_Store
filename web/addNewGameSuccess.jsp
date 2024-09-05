<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Game" %>
<html>
    <body>
        <!-- get session object game -->
        <% Game game = (Game) session.getAttribute("game"); %>
        <p>Game</p>
        ID : <%= game.getId() %><br/>
        Name : <%= game.getName() %><br/>
        Type : <%= game.getType() %><br/>
        DLC : <%= game.getDlc() %><br/>
        Price : <%= game.getPrice() %><br/>
        <a href="updateGame.jsp">Edit game information</a>
    </body>
</html>

