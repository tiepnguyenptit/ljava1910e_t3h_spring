package application.controller.api;


import application.data.repository.CategoryRepository;
import application.data.repository.OrderRepository;
import application.data.repository.ProductRepository;
import application.model.api.DataApiResult;
import application.model.viewmodel.common.ChartDataVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;


@RestController
@RequestMapping(path = "/api/chart")
public class ChartApiController {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private OrderRepository orderRepository;

    @GetMapping("/product/hot-by-month")
    public DataApiResult getListFiveHotProduct(){
        DataApiResult result = new DataApiResult();
        Pageable pageable = new PageRequest(0, 5);
        Date date = new Date();
        List<ChartDataVM> chartDataVMS = productRepository.getListFiveHotProduct(pageable, date.getMonth() +1, date.getYear() + 1900);
        result.setMessage("success");
        result.setSuccess(true);
        result.setData(chartDataVMS);
        return result;
    }


    @GetMapping("/category/product-ordered")
    public DataApiResult getListProductOrderedByCategory(){
        DataApiResult result = new DataApiResult();
        List<ChartDataVM> chartDataVMS = categoryRepository.getListProductOrderedByCategory();
        result.setMessage("success");
        result.setSuccess(true);
        result.setData(chartDataVMS);
        return result;
    }

    @GetMapping("/order/revenue")
    public DataApiResult getRevenueMonthByYear(){
        DataApiResult result = new DataApiResult();
        Date date = new Date();
        List<ChartDataVM> chartDataVMS = orderRepository.getRevenueMonthByYear(date.getYear() + 1900);
        result.setMessage("success");
        result.setSuccess(true);
        result.setData(chartDataVMS);
        return result;
    }
}
