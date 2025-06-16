
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class MaterialInput {

    public static void addMaterialFromInput(Scanner scanner) {
        try {
            System.out.println("Add new construction material:");

            // Vereiste velden
            System.out.print("Name: ");
            String name = scanner.nextLine();

            System.out.print("Layer (Ballast, Waterproofing membrane, Thermal insulation, Vapour barrier, Roof deck, Interior finish): ");
            String layer = scanner.nextLine();

            System.out.print("Functional unit (m, m2, m3, kg): ");
            String functionalUnit = scanner.nextLine();

            System.out.print("Environmental impact (kg CO₂-eq per " + functionalUnit + "): ");
            double environmentalImpact = Double.parseDouble(scanner.nextLine());

            Double massDensity = null;
            if (functionalUnit.equals("kg")) {
                System.out.print("Mass density (kg/m³): ");
                massDensity = Double.parseDouble(scanner.nextLine());
            }

            // Optionele velden
            System.out.print("Unit price (optional): ");
            String unitPriceInput = scanner.nextLine();
            Double unitPrice = unitPriceInput.isEmpty() ? null : Double.parseDouble(unitPriceInput);

            System.out.print("Image (URL or path) (optional): ");
            String image = scanner.nextLine();

            // SQL insert
            String sql = "INSERT INTO construction_product (name, layer, functional_unit, environmental_impact, mass_density, unit_price, image) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?)";

            try (Connection conn = DatabaseConnector.getConnection();
                 PreparedStatement stmt = conn.prepareStatement(sql)) {

                stmt.setString(1, name);
                stmt.setString(2, layer);
                stmt.setString(3, functionalUnit);
                stmt.setDouble(4, environmentalImpact);
                if (massDensity != null) stmt.setDouble(5, massDensity); else stmt.setNull(5, java.sql.Types.DOUBLE);
                if (unitPrice != null) stmt.setDouble(6, unitPrice); else stmt.setNull(6, java.sql.Types.DOUBLE);
                stmt.setString(7, image.isEmpty() ? null : image);

                int rowsInserted = stmt.executeUpdate();
                if (rowsInserted > 0) {
                    System.out.println("Material successfully added to database.");
                } else {
                    System.out.println("Material could not be added.");
                }
            }

        } catch (Exception e) {
            System.out.println("Error adding material:");
            e.printStackTrace();
        }
    }
}
