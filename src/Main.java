
import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Welcome to the application. Make your choice:");
        System.out.println("1. New project");
        System.out.println("2. Existing project");
        System.out.println("3. Database materials");
        System.out.print("Insert the number of your choice: ");

        String choice = scanner.nextLine();

        switch (choice) {
            case "1":
                runNewProject(scanner);
                break;

            case "2":
                runExistingProjectModule(scanner);
                break;

            case "3":
                runMaterialDatabase(scanner);
                break;

            default:
                System.out.println("Invalid choice. Shutdown of application.");
        }
    }

    public static void runNewProject(Scanner scanner) {

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

            System.out.print("\nInsert a name for the project (max 100 characters): ");
            String projectName = scanner.nextLine().trim();

            // Validatie
            while (projectName.isEmpty() || projectName.length() > 100) {
                System.out.println("Invalid name. Try again (max 100 characters, not empty): ");
                projectName = scanner.nextLine().trim();
            }

            // Na de loop → maak het project aan
            RoofProject project = new RoofProject(projectName, appliedLayers, totalImpact);
            System.out.printf("Total environmental impact of %s: %.2f kg CO₂-eq/m²%n",
                    project.getProjectName(), project.getTotalImpact());

            // Opslaan in DB
            project.saveToDatabase();

        } catch (IllegalArgumentException iae) {
            System.out.println("Invalid input: " + iae.getMessage());
            System.out.println("Please make sure to select a valid unit (m2, m3, kg).");
        } catch (Exception e) {
            System.out.println("An unexpected error occurred:");
            e.printStackTrace();
        }
    }

    public static void runExistingProjectModule(Scanner scanner) {
        System.out.println("\nExisting Project Menu:");
        System.out.println("1. Consult an existing project");
        System.out.println("2. Compare two projects");
        System.out.print("Select an option: ");

        int choice = Integer.parseInt(scanner.nextLine());

        switch (choice) {
            case 1:
                System.out.println("This section is still under development.");
                break;
            case 2:
                List<RoofProject> projects = ProjectRepository.getAllProjects();

                if (projects.size() < 2) {
                    System.out.println("Not enough projects to compare.");
                    return;
                }

                // Print alle projecten
                System.out.println("\nAvailable projects:");
                for (int i = 0; i < projects.size(); i++) {
                    System.out.printf("%d. %s (%.2f kg CO₂-eq/m²)%n", i + 1,
                            projects.get(i).getProjectName(), projects.get(i).getTotalImpact());
                }

                // Selecteer projecten
                System.out.print("\nEnter the number of the first project to compare: ");
                int index1 = Integer.parseInt(scanner.nextLine()) - 1;

                System.out.print("Enter the number of the second project to compare: ");
                int index2 = Integer.parseInt(scanner.nextLine()) - 1;

                if (index1 == index2 || index1 < 0 || index2 < 0 || index1 >= projects.size() || index2 >= projects.size()) {
                    System.out.println("Invalid selection. Please select two different valid projects.");
                    return;
                }

                RoofProject p1 = projects.get(index1);
                RoofProject p2 = projects.get(index2);

                System.out.println("\nComparison of selected projects:");
                if (p1.getTotalImpact() < p2.getTotalImpact()) {
                    System.out.printf("🟢 %s: %.2f kg CO₂-eq/m²%n", p1.getProjectName(), p1.getTotalImpact());
                    System.out.printf("🔴 %s: %.2f kg CO₂-eq/m²%n", p2.getProjectName(), p2.getTotalImpact());
                } else if (p2.getTotalImpact() < p1.getTotalImpact()) {
                    System.out.printf("🔴 %s: %.2f kg CO₂-eq/m²%n", p1.getProjectName(), p1.getTotalImpact());
                    System.out.printf("🟢 %s: %.2f kg CO₂-eq/m²%n", p2.getProjectName(), p2.getTotalImpact());
                } else {
                    System.out.printf("Both projects have the same impact: %.2f kg CO₂-eq/m²%n", p1.getTotalImpact());
                }
                break;
            default:
                System.out.println("Invalid option.");
        }
    }

    private static void runMaterialDatabase(Scanner scanner) {
        System.out.println("\nMaterial Database Menu:");
        System.out.println("1. Add a new material");
        System.out.print("Make your choice: ");
        String materialChoice = scanner.nextLine();

        switch (materialChoice) {
            case "1":
                MaterialInput.addMaterialFromInput(scanner);
                break;
            default:
                System.out.println("Invalid choice.");
        }
    }
}