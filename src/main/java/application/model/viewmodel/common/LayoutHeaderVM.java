package application.model.viewmodel.common;


import java.util.List;

public class LayoutHeaderVM {
    private String companyName;
    private List<HeaderMenuVM> headerMenuVMList;

    public List<HeaderMenuVM> getHeaderMenuVMList() {
        return headerMenuVMList;
    }

    public void setHeaderMenuVMList(List<HeaderMenuVM> headerMenuVMList) {
        this.headerMenuVMList = headerMenuVMList;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }
}
