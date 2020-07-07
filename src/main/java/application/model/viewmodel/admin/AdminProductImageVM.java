package application.model.viewmodel.admin;

import application.model.viewmodel.common.LayoutHeaderAdminVM;
import application.model.viewmodel.common.ProductImageVM;

import java.util.List;

public class AdminProductImageVM {

    private LayoutHeaderAdminVM layoutHeaderAdminVM;
    private List<ProductImageVM> productImageVMS;
    private int productId;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public LayoutHeaderAdminVM getLayoutHeaderAdminVM() {
        return layoutHeaderAdminVM;
    }

    public void setLayoutHeaderAdminVM(LayoutHeaderAdminVM layoutHeaderAdminVM) {
        this.layoutHeaderAdminVM = layoutHeaderAdminVM;
    }

    public List<ProductImageVM> getProductImageVMS() {
        return productImageVMS;
    }

    public void setProductImageVMS(List<ProductImageVM> productImageVMS) {
        this.productImageVMS = productImageVMS;
    }
}
