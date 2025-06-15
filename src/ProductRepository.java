import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductRepository {

    public static List<ConstructionProduct> getProductsByLayer(String layer) {
        List<ConstructionProduct> products = new ArrayList<>();
        String sql = "SELECT * FROM construction_product WHERE layer = ?";

        try (Connection conn = DatabaseConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, layer);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                double massDensity = rs.getDouble("mass_density");
                String functionalUnit = rs.getString("functional_unit");
                double environmentalImpact = rs.getDouble("environmental_impact");

                products.add(new ConstructionProduct(name, massDensity, functionalUnit, environmentalImpact));
            }

        } catch (Exception e) {
            System.out.println("Error fetching products for layer: " + layer);
            e.printStackTrace();
        }

        return products;
    }
}
