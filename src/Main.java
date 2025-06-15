
import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        try {
            String[] layers = {"Roof deck", "Thermal insulation", "Waterproofing membrane"};

            List<AppliedLayer> appliedLayers = new ArrayList<>();
            double totalImpact = 0;

            for (String layer : layers) {
                List<ConstructionProduct> options = ProductRepository.getProductsByLayer(layer);

                // Toon beschikbare materialen
                System.out.println("\nAvailable materials for " + layer + ":");
                for (int i = 0; i < options.size(); i++) {
                    System.out.printf("%d. %s%n", i + 1, options.get(i).getName());
                }

                // Vraag materiaalkeuze
                System.out.print("Enter the number of the product you want to select: ");
                int selectedIndex = Integer.parseInt(scanner.nextLine()) - 1;
                ConstructionProduct selectedProduct = options.get(selectedIndex);

                // Vraag dikte
                System.out.print("Enter the thickness in meters (e.g. 0.2 for 20 cm): ");
                double thickness = Double.parseDouble(scanner.nextLine());

                // Verwerking
                AppliedLayer applied = new AppliedLayer(selectedProduct, thickness);
                double impact = EnvironmentalImpactCalculator.calculateImpact(selectedProduct, thickness);

                appliedLayers.add(applied);
                totalImpact += impact;

                System.out.printf("Selected %s for %s (%.3f m) → %.2f kg CO₂-eq/m²%n",
                        selectedProduct.getName(), layer, thickness, impact);
            }


            RoofProject project = new RoofProject("Warm Roof Project A", appliedLayers, totalImpact);
            System.out.printf("Total environmental impact of %s: %.2f kg CO₂-eq/m²%n",
                    project.getProjectName(), project.getTotalImpact());

        } catch (Exception e) {
            System.out.println("General error:");
            e.printStackTrace();
        }
    }
}