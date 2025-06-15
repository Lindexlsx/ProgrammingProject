
public class ConstructionProduct {
    private String name;
    private double massDensity;
    private String functionalUnit;
    private double environmentalImpact;


    public ConstructionProduct(String name, double massDensity, String functionalUnit, double environmentalImpact) {
        this.name = name;
        this.functionalUnit = functionalUnit;
        this.environmentalImpact = environmentalImpact;
        this.massDensity = massDensity;
    }

    public String getName() { return name; }
    public String getFunctionalUnit() { return functionalUnit; }
    public double getEnvironmentalImpact() { return environmentalImpact; }
    public double getMassDensity() { return massDensity; }
}