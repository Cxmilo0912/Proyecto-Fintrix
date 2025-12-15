package fintrix.dao;

import java.sql.*;

public class Conexion {

    private static final String URL = "jdbc:mysql://localhost:3306/fintrix_db?useSSL=false&serverTimeZone=America/Bogota";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";

    /**
     * Obtiene una conexión a la bas de datos
     *
     * @return Connection objeto de la conexión
     */
    public static Connection getConnection() {
        Connection connection = null;

        try {
            Class.forName(DRIVER);

            connection = DriverManager.getConnection(URL, USER, PASSWORD);

        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Error al conectar con la base de datos, no se encontro el driver MySQL");
            e.printStackTrace();
        }
        return connection;
    }

    /**
     * Cierra una conexión
     *
     * @param connection Conexión a cerrar
     */
    public static void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar la conexión");
                e.printStackTrace();
            }
        }
    }

    /**
     * Prueba la conexión a la base de datos
     *
     * @return true si la conexión es exitosa
     */
    public static boolean testConnection() {
        Connection conn = getConnection();
        boolean isConnected = (conn != null);
        closeConnection(conn);
        return isConnected;
    }

}
