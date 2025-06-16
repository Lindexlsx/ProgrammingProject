
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProjectRepository {

    public static List<RoofProject> getAllProjects() {
        List<RoofProject> projects = new ArrayList<>();

        try (Connection conn = DatabaseConnector.getConnection()) {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM roof_project");

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("project_name");
                double totalImpact = rs.getDouble("total_impact");

                // Layers worden voorlopig niet opgehaald
                projects.add(new RoofProject(name, null, totalImpact));
            }
        } catch (Exception e) {
            System.out.println("Error fetching projects:");
            e.printStackTrace();
        }

        return projects;
    }
}