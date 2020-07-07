package application.model.viewmodel.home;

import application.model.viewmodel.common.CategoryVM;
import application.model.viewmodel.common.LayoutHeaderVM;
import application.model.viewmodel.common.ProductVM;

import java.util.List;

public class HomeLandingVM {
    private List<BannerVM> listBanners;
    private LayoutHeaderVM layoutHeaderVM;
    private List<ProductVM> productVMList;
    private List<CategoryVM> categoryVMList;
    private String keyWord;

    public List<BannerVM> getListBanners() {
        return listBanners;
    }

    public void setListBanners(List<BannerVM> listBanners) {
        this.listBanners = listBanners;
    }

    public LayoutHeaderVM getLayoutHeaderVM() {
        return layoutHeaderVM;
    }

    public void setLayoutHeaderVM(LayoutHeaderVM layoutHeaderVM) {
        this.layoutHeaderVM = layoutHeaderVM;
    }

    public List<ProductVM> getProductVMList() {
        return productVMList;
    }

    public void setProductVMList(List<ProductVM> productVMList) {
        this.productVMList = productVMList;
    }

    public List<CategoryVM> getCategoryVMList() {
        return categoryVMList;
    }

    public void setCategoryVMList(List<CategoryVM> categoryVMList) {
        this.categoryVMList = categoryVMList;
    }

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }
}
