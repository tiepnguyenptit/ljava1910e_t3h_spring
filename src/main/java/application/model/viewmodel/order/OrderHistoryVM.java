package application.model.viewmodel.order;

import application.model.viewmodel.common.LayoutHeaderVM;

import java.util.List;

public class OrderHistoryVM {

    private LayoutHeaderVM layoutHeaderVM;
    private List<OrderVM> orderVMS;

    public LayoutHeaderVM getLayoutHeaderVM() {
        return layoutHeaderVM;
    }

    public void setLayoutHeaderVM(LayoutHeaderVM layoutHeaderVM) {
        this.layoutHeaderVM = layoutHeaderVM;
    }

    public List<OrderVM> getOrderVMS() {
        return orderVMS;
    }

    public void setOrderVMS(List<OrderVM> orderVMS) {
        this.orderVMS = orderVMS;
    }
}
