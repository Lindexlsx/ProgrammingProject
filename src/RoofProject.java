
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class RoofProject {
    private String projectName;
    private List<AppliedLayer> layers;
    private double totalImpact;

    public RoofProject(String projectName, List<AppliedLayer> layers, double totalImpact) {
        this.projectName = projectName;
        this.layers = layers;
        this.totalImpact = totalImpact;
    }

    public String getProjectName() { return projectName; }
    public List<AppliedLayer> getLayers() { return layers; }
    public double getTotalImpact() { return totalImpact; }

    public void saveToDatabase() {
        try (Connection conn = DatabaseConnector.getConnection()) {
            String sql = "INSERT INTO roof_project (project_name, total_impact) VALUES (?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, projectName);
            stmt.setDouble(2, totalImpact);
            stmt.executeUpdate();
            System.out.println("Project succesvol opgeslagen in de databank.");
        } catch (Exception e) {
            System.out.println("Fout bij opslaan van project:");
            e.printStackTrace();
        }
    }
}