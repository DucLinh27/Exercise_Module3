package reponsitory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
    private String jdbcURL = "jdbc:mysql://localhost:3306/demo1";
    private String jdbcUsername = "root";
    private String jdbcPassword = "tranduclinh27072002";

    public Connection getConnection() throws SQLException, ClassNotFoundException {
        Connection connection = null;
        Class.forName("com.mysql.cj.jdbc.Driver");

        connection = DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcPassword);

        return connection;
    }
}
