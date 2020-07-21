package application.controller.web;

import application.data.model.Cart;
import application.data.model.CartProduct;
import application.data.service.CartService;
import application.model.viewmodel.cart.CartProductVM;
import application.model.viewmodel.cart.CartVM;
import application.model.viewmodel.common.ProductVM;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.security.Principal;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(path = "/cart")
public class CartController extends BaseController {

    private static final Logger logger = LogManager.getLogger(CartController.class);


    @Autowired
    private CartService cartService;

    @GetMapping("")
    public String cart(Model model,
                       @Valid @ModelAttribute("productname") ProductVM productName,
                       HttpServletResponse response,
                       HttpServletRequest request,
                       final Principal principal) {

        this.checkCookie(response,request,principal);

        CartVM vm = new CartVM();

        int productAmount = 0;
        double totalPrice = 0;
        List<CartProductVM> cartProductVMS = new ArrayList<>();

        String guid = getGuid(request);

        DecimalFormat df = new DecimalFormat("####0.00");

        try {
            if(guid != null) {
                Cart cartEntity = cartService.findFirstCartByGuid(guid);
                if(cartEntity != null) {
                    productAmount = cartEntity.getListCartProducts().size();
                    for(CartProduct cartProduct : cartEntity.getListCartProducts()) {
                        CartProductVM cartProductVM = new CartProductVM();
                        cartProductVM.setId(cartProduct.getId());
                        cartProductVM.setProductId(cartProduct.getProduct().getId());
                        cartProductVM.setProductName(cartProduct.getProduct().getName());
                        cartProductVM.setMainImage(cartProduct.getProduct().getMainImage());
                        cartProductVM.setAmount(cartProduct.getAmount());
                        double price = cartProduct.getAmount()*cartProduct.getProduct().getPrice();
                        cartProductVM.setPrice(df.format(price));
                        totalPrice += price;
                        cartProductVMS.add(cartProductVM);
                    }
                }
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }

        vm.setProductAmount(productAmount);
        vm.setCartProductVMS(cartProductVMS);
        vm.setTotalPrice(df.format(totalPrice));
        vm.setLayoutHeaderVM(this.getLayoutHeaderVM());

        model.addAttribute("vm",vm);

        return "/cart";
    }

    public String getGuid(HttpServletRequest request) {
        Cookie cookie[] = request.getCookies();

        if(cookie!=null) {
            for(Cookie c :cookie) {
                if(c.getName().equals("guid"))  return c.getValue();
            }
        }
        return null;
    }

}
