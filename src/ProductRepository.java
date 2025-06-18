
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.SQLException;

public class ProductRepository {

    // Haalt alle bouwmaterialen op uit de databank die behoren tot een bepaalde laag.
    public static List<ConstructionProduct> getProductsByLayer(String layer) {
        List<ConstructionProduct> products = new ArrayList<>();
        // SQL-query met parameter (de laag)
        String sql = "SELECT * FROM construction_product WHERE layer = ?";

        // Probeer verbinding te maken met de databank en de query uit te voeren
        try (Connection conn = DatabaseConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Zet de waarde van de parameter (de laag)
            stmt.setString(1, layer);
            // Voer de query uit en vang het resultaat op
            ResultSet rs = stmt.executeQuery();

            // Loop door elke rij in het resultaat
            while (rs.next()) {
                // Haal de waarden op uit de huidige rij
                String name = rs.getString("name");
                double massDensity = rs.getDouble("mass_density");
                String functionalUnit = rs.getString("functional_unit");
                double environmentalImpact = rs.getDouble("environmental_impact");

                // Maak een ConstructionProduct aan en voeg toe aan de lijst
                products.add(new ConstructionProduct(name, massDensity, functionalUnit, environmentalImpact));
            }

        } catch (SQLException e) {
            // Foutmelding bij databasefout, met vermelding van de laag
            System.out.println("Database error while fetching products for layer '" + layer + "':");
            e.printStackTrace();
        }

        // Retourneer de lijst met producten
        return products;
    }
}
