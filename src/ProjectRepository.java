
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProjectRepository {

    // Haalt alle dakprojecten op uit de databank.
    public static List<RoofProject> getAllProjects() {
        List<RoofProject> projects = new ArrayList<>();

        // Probeer verbinding te maken met de databank en haal alle projecten op
        try (Connection conn = DatabaseConnector.getConnection()) {
            Statement stmt = conn.createStatement();
            // Uitvoeren van SQL-query die alle projecten ophaalt
            ResultSet rs = stmt.executeQuery("SELECT * FROM roof_project");

            // Loop door elke rij in het resultaat
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("project_name");
                double totalImpact = rs.getDouble("total_impact");

                // Voorlopig worden de lagen van het project niet mee opgehaald
                projects.add(new RoofProject(name, null, totalImpact));
            }
        } catch (SQLException e) {
            // Specifieke foutmelding als iets misloopt bij het ophalen van de projecten
            System.out.println("Database error while fetching projects:");
            e.printStackTrace();
        }

        // Retourneer de lijst van projecten
        return projects;
    }
}