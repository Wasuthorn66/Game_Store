package controller;

import java.sql.*;
import model.Game;

public class DBConection {
    
    public boolean insertNewGame(Game game) {
        boolean result = false;
        Connection connection = null;
        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/game_store",
                    "root", "UBU_12345678");
            
            Statement statement;
            statement = connection.createStatement();
            
            String query = "INSERT INTO game "
                    + "(name, type, dlc, price) "
                    + "VALUES('"
                    + game.getName() + "','"
                    + game.getType() + "','"
                    + game.getDlc() + "',"
                    + game.getPrice() + ")";
            System.out.println("........SQL: " + query);

            int i = statement.executeUpdate(query);
            if (i != 0) {
                result = true;
            }
            statement.close();
            connection.close();
        } catch (Exception exception) {
            System.out.println(exception);
        }

        return result;
    }


    public void testRetrieve() {
        Connection connection = null;
        try {
            // below two lines are used for connectivity.
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/game_store",
                    "root", "UBU_12345678");

            Statement statement;
            statement = connection.createStatement();
            ResultSet resultSet;
            resultSet = statement.executeQuery(
                    "select name from game");
            String name;
            while (resultSet.next()) {
                name = resultSet.getString("name").trim();
                System.out.println(" name : " + name);
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception exception) {
            System.out.println(exception);
        }
    }

}