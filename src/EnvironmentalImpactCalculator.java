
public class EnvironmentalImpactCalculator {
    public static double calculateImpact(ConstructionProduct product, double thickness) {
        String unit = product.getFunctionalUnit();

        switch (unit) {
            case "m2":
                return product.getEnvironmentalImpact();

            case "m3":
                return thickness * product.getEnvironmentalImpact();

            case "kg":
                double volume = thickness * 1; // m³ per m²
                double mass = volume * product.getMassDensity();
                return mass * product.getEnvironmentalImpact();

            default:
                throw new IllegalArgumentException("Unsupported functional unit: " + unit);
        }
    }
}