
import java.util.List;

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
}