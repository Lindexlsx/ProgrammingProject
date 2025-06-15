
public class AppliedLayer {
    private ConstructionProduct product;
    private double thickness;

    public AppliedLayer(ConstructionProduct product, double thickness) {
        this.product = product;
        this.thickness = thickness;
    }

    public ConstructionProduct getProduct() { return product; }
    public double getThickness() { return thickness; }
}
