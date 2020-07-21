package application.controller.web;

import application.data.model.*;
import application.data.service.CartProductService;
import application.data.service.CartService;
import application.data.service.OrderService;
import application.data.service.UserService;
import application.model.viewmodel.common.ProductVM;
import application.model.viewmodel.order.*;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.security.Principal;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(path = "/order")
public class OrderController extends BaseController {

    private static final Logger logger = LogManager.getLogger(OrderController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private CartService cartService;

    @Autowired
    private CartProductService cartProductService;

    @GetMapping("/checkout")
    public String checkout(Model model,
                           @Valid @ModelAttribute("productname") ProductVM productName,
                           final Principal principal) {
        CheckoutVM vm = new CheckoutVM();
        OrderVM order = new OrderVM();
        if(principal!= null) {
            String username = SecurityContextHolder.getContext().getAuthentication().getName();
            User userEntity = userService.findUserByUsername(username);
            if(userEntity!= null) {
                order.setAddress(userEntity.getAddress());
                order.setCustomerName(userEntity.getName());
                order.setPhoneNumber(userEntity.getPhoneNumber());
                order.setEmail(userEntity.getEmail());
            }
        }

        vm.setLayoutHeaderVM(this.getLayoutHeaderVM());
        model.addAttribute("order",order);
        model.addAttribute("vm",vm);
        return "/checkout";
    }

    @PostMapping("/checkout")
    public String checkout(@Valid @ModelAttribute("order") OrderVM orderVM,
                           @Valid @ModelAttribute("productname") ProductVM productName,
                           HttpServletResponse response,
                           HttpServletRequest request,
                           final Principal principal) {
        Order order = new Order();

        boolean flag = false;

        Cookie cookie[] = request.getCookies();

        String guid = null;

        if(cookie!=null) {
            for(Cookie c : cookie) {
                if(c.getName().equals("guid")) {
                    flag = true;
                    guid = c.getValue();
                }
            }
        }

        if(flag == true) {

            double totalPrice = 0;

            if(principal != null) {
                String  username = SecurityContextHolder.getContext().getAuthentication().getName();
                order.setUserName(username);
            }

            order.setGuid(guid);
            order.setAddress(orderVM.getAddress());
            order.setEmail(orderVM.getEmail());
            order.setPhoneNumber(orderVM.getPhoneNumber());
            order.setCustomerName(orderVM.getCustomerName());
            order.setCreatedDate(new Date());


            Cart cartEntity = cartService.findFirstCartByGuid(guid);
            if(cartEntity != null) {
                List<OrderProduct> orderProducts = new ArrayList<>();
                for (CartProduct cartProduct : cartEntity.getListCartProducts()) {
                    OrderProduct orderProduct = new OrderProduct();
                    orderProduct.setOrder(order);
                    orderProduct.setProduct(cartProduct.getProduct());
                    orderProduct.setAmount(cartProduct.getAmount());

                    double price = cartProduct.getAmount() * cartProduct.getProduct().getPrice();
                    totalPrice += price;

                    orderProduct.setPrice(price);

                    orderProducts.add(orderProduct);
                }

                order.setListProductOrders(orderProducts);
                order.setPrice(totalPrice);

                orderService.addNewOrder(order);

                cartService.deleteCart(cartEntity.getId());
            }
        }

        return "redirect:/order/history";
    }


}
