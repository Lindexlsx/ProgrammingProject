package model;

public class ConstructionProduct {
    private String name;
    private double massDensity;
    private double environmentalImpact;
    private double thickness; // in meters

    // Constructor zonder thickness (voor algemene doeleinden)
    public ConstructionProduct(String name, double massDensity, double environmentalImpact) {
        this.name = name;
        this.massDensity = massDensity;
        this.environmentalImpact = environmentalImpact;
    }

    // Constructor met thickness (voor specifieke berekeningen)
    public ConstructionProduct(String name, double massDensity, double environmentalImpact, double thickness) {
        this.name = name;
        this.massDensity = massDensity;
        this.environmentalImpact = environmentalImpact;
        this.thickness = thickness;
    }

    public String getName() {
        return name;
    }

    public double getMassDensity() {
        return massDensity;
    }

    public double getEnvironmentalImpact() {
        return environmentalImpact;
    }

    public double getThickness() {
        return thickness;
    }

    public void setThickness(double thickness) {
        this.thickness = thickness;
    }

    @Override
    public String toString(){
        return "mdh = " + massDensity + " MI = " + environmentalImpact + " d = " + thickness;
    }
}