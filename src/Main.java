import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.HashMap;
import java.util.Map;
import java.util.ArrayList;
import java.util.List;

import com.sun.source.doctree.SystemPropertyTree;
import model.ConstructionProduct;
import service.EnvironmentalImpactCalculator;

public class Main {
    public static void main(String[] args) {
        try {
            Connection conn = DatabaseConnector.getConnection();

            Map<String, Double> thicknesses = new HashMap<>();
            thicknesses.put("Concrete C25/30", 0.30);
            thicknesses.put("Polyurethane Rigid Foam", 0.10);
            thicknesses.put("Polymer modified bitumen (PMB)", 0.008);

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM construction_product");

            List<ConstructionProduct> composition = new ArrayList<>();

            while (rs.next()) {
                String name = rs.getString("name");
                double massDensity = rs.getDouble("mass_density");
                double environmentalImpact = rs.getDouble("environmental_impact");

                if (thicknesses.containsKey(name)) {
                    double thickness = thicknesses.get(name);
                    ConstructionProduct product = new ConstructionProduct(name, massDensity, environmentalImpact, thickness);
                    // System.out.println(product.toString());
                    composition.add(product);
                }
            }

            double totalImpact = 5;
            for (ConstructionProduct product : composition) {
                double impact = EnvironmentalImpactCalculator.calculateImpact(product, product.getThickness());
                System.out.printf("Layer: %s (%.3f m) → %.2f kg CO₂-eq/m²%n", product.getName(), product.getThickness(), impact);
                totalImpact += impact;
            }

            System.out.printf("Total environmental impact of roof composition: %.2f kg CO₂-eq/m²%n", totalImpact);

            conn.close();

        } catch (Exception e) {
            System.out.println("Connection error:");
            e.printStackTrace();
        }
    }
}