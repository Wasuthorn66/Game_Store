<%-- 
    Document   : UpdateGame
    Created on : Jul 18, 2024, 2:38:59 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Game" %>
<!DOCTYPE html>
<html>
    <body>
        <% Game game = (Game) session.getAttribute("game"); %>
        <p>Set Game Data</p>
        <form action="AddnewGameServlet" method="post">
            Name: <input type="text" name="gameName" value="<%= game.getName() %>"><br/>
            <br>
            Type: 
            <select name="gametype">
                <option value="Open World" <%= game.getType().equals("Open World") %>>Open World</option>
                <option value="Rpg" <%= game.getType().equals("Rpg") %>>Rpg</option>
                <option value="Fps" <%= game.getType().equals("Fps") %>>Fps</option>
                <option value="Moba" <%= game.getType().equals("Moba") %>>Moba</option>
                <option value="Other" <%= game.getType().equals("Other") %>>Other</option>
            </select>
            <br>
            <br>
            DLC: 
            <input type="radio" id="DLC_YES" name="gameDLC" value="Yes" Yes
            <label for="DLC_YES">Yes</label>
            <input type="radio" id="DLC_NO" name="gameDLC" value="No" No
            <label for="DLC_NO">No</label>
            <br>
            <br>
            Price: <input type="text" name="gamePrice" value="<%= game.getPrice() %>"><br/>
            <br>
            <input type="submit" value="Set Data">
        </form>
        <% session.removeAttribute("game"); %>
    </body>
</html>

