package application.controller.web;

import application.constant.CompanyConstant;
import application.model.viewmodel.common.HeaderMenuVM;
import application.model.viewmodel.common.LayoutHeaderVM;

import java.util.ArrayList;
import java.util.List;

public class BaseController {

    public LayoutHeaderVM getLayoutHeaderVM() {
        LayoutHeaderVM vm = new LayoutHeaderVM();
        List<HeaderMenuVM> headerMenuVMArrayList = new ArrayList<>();
        headerMenuVMArrayList.add(new HeaderMenuVM("Home", "/"));
        headerMenuVMArrayList.add(new HeaderMenuVM("Contact", "/"));
        headerMenuVMArrayList.add(new HeaderMenuVM("Cart", "/cart"));

        vm.setHeaderMenuVMList(headerMenuVMArrayList);
        vm.setCompanyName(CompanyConstant.NAME);

        return vm;
    }

}
