import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnector {
    // Databasegegevens
    private static final String URL = "jdbc:mysql://localhost:3306/environmental_impact";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    // Methode om een connectie op te halen
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}