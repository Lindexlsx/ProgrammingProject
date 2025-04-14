package service;

import model.ConstructionProduct;

public class EnvironmentalImpactCalculator {

    // GWP berekenen van 1 m² bij een bepaalde dikte (in meter)
    public static double calculateImpact(ConstructionProduct product, double thickness) {
        double mass = product.getMassDensity() * 1 * thickness;
        return mass * product.getEnvironmentalImpact();
    }
}