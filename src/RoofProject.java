
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class RoofProject {
    private String projectName;
    private List<AppliedLayer> layers;
    private double totalImpact;

    // Constructor om een RoofProject-object aan te maken.
    public RoofProject(String projectName, List<AppliedLayer> layers, double totalImpact) {
        this.projectName = projectName;
        this.layers = layers;
        this.totalImpact = totalImpact;
    }

    // Getters om de gegevens van het project op te halen
    public String getProjectName() { return projectName; }
    public List<AppliedLayer> getLayers() { return layers; }
    public double getTotalImpact() { return totalImpact; }

    // Slaat het project op in de databank (alleen naam en totale impact).
    public void saveToDatabase() {
        try (Connection conn = DatabaseConnector.getConnection()) {
            // SQL-query om een nieuw record in de tabel roof_project in te voegen
            String sql = "INSERT INTO roof_project (project_name, total_impact) VALUES (?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            // Vul de waarden in voor de parameterplaatsen van het statement
            stmt.setString(1, projectName);
            stmt.setDouble(2, totalImpact);
            // Voer het statement uit
            stmt.executeUpdate();
            System.out.println("Project saved succesfully in database.");
        } catch (Exception e) {
            System.out.println("Error saving project:");
            e.printStackTrace();
        }
    }
}