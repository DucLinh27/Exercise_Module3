package model.service;

import model.bean.User;

import java.io.PipedReader;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUserDAO {

    public static final String SELECT_ALL_USER = "SELECT * FROM users;";
    public static final String DELETE_USER = "DELETE FROM users where id = ?;";
    public static final String UPDATE_USER = "UPDATE users SET name = ? , email = ? , country = ? where  id = ?;";
    public static final String SELECT_BY_COUNTRY = "SELECT  * FROM users where country = ?;";
    public static final String SELECT_USER = "SELECT * FROM users where id = ?;";
    public static final String INSERT_USER = "INSERT INTO users" + "(name,email,country)VALUES " + "(?,?,?);";

    private String jdbcURL = "jdbc:mysql://localhost:3306/demo1";
    private String jdbcUserName = "root";
    private String jdbcPassword = "123456";

    public UserDAO() {
    }

    public Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUserName, jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return connection;
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        boolean rowDelete;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USER)) {
            preparedStatement.setInt(1, id);
            rowDelete = preparedStatement.executeUpdate() > 0;
        }
        return rowDelete;
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        boolean rowUpdate;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER)) {
            preparedStatement.setInt(4, user.getId());
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            rowUpdate = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdate;
    }

    @Override
    public List<User> selectAllUser() {
        List<User> users = new ArrayList<>();
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USER)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                users.add(new User(id, name, email, country));
            }
        } catch (SQLException exception) {
            printSQLException(exception);
        }
        return users;
    }

    public List<User> selectByCountry(String ct) throws SQLException {
        User user = null;
        List<User> list = new ArrayList<>();
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_COUNTRY)) {
            preparedStatement.setString(1, ct);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(id, name, email, country);
                list.add(user);
            }
        } catch (SQLException exception) {
            printSQLException(exception);
        }
        return list;
    }

    @Override
    public User selectUser(int id) throws SQLException {
        User user = null;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER)) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(name, email, country);
            }
        } catch (SQLException exception) {
            printSQLException(exception);
        }
        return user;
    }

    @Override
    public void insertUser(User user) throws SQLException {
        System.out.println("INSERT INTO users" + "(name,email,country)VALUES + " + "(?,?,?);");
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER)) {
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException exception) {
            printSQLException(exception);
        }
    }

    private void printSQLException(SQLException exception) {
        for (Throwable e : exception) {
            if (e instanceof SQLException) {
                System.out.println("SQLState : " + ((SQLException) exception).getSQLState());
                System.out.println("Error Code : " + ((SQLException) exception).getErrorCode());
                System.out.println("Message : " + ((SQLException) exception).getMessage());
                Throwable t = exception.getCause();
                while (t != null) {
                    System.out.println("Cause " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
