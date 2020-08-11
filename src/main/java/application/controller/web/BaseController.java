package application.controller.web;

import application.constant.CompanyConstant;
import application.data.model.Cart;
import application.data.model.User;
import application.data.service.CartService;
import application.data.service.UserService;
import application.model.viewmodel.common.HeaderMenuVM;
import application.model.viewmodel.common.LayoutHeaderAdminVM;
import application.model.viewmodel.common.LayoutHeaderVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.Principal;
import java.util.ArrayList;
import java.util.UUID;

public class BaseController {

    @Autowired
    private UserService userService;

    @Autowired
    private CartService cartService;

    public LayoutHeaderVM getLayoutHeaderVM() {
        LayoutHeaderVM vm = new LayoutHeaderVM();
        ArrayList<HeaderMenuVM> headerMenuVMArrayList = new ArrayList<>();
        headerMenuVMArrayList.add(new HeaderMenuVM("Home", "/"));
        headerMenuVMArrayList.add(new HeaderMenuVM("Contact", "/"));
        headerMenuVMArrayList.add(new HeaderMenuVM("Cart", "/cart"));

        vm.setHeaderMenuVMList(headerMenuVMArrayList);
        vm.setCompanyName(CompanyConstant.NAME);

        return vm;
    }

    public void checkCookie(HttpServletResponse response,
                            HttpServletRequest request,
                            final Principal principal) {
        Cookie cookie[] = request.getCookies();


        if(principal!= null) {
            String username = SecurityContextHolder.getContext().getAuthentication().getName();
            Cart cartEntity = cartService.findByUserName(username);
            if(cartEntity != null) {
                Cookie cookie1 = new Cookie("guid",cartEntity.getGuid());
                cookie1.setPath("/");
                cookie1.setMaxAge(60*60*24);
                response.addCookie(cookie1);
            } else {
                UUID uuid = UUID.randomUUID();
                String guid = uuid.toString();
                Cart cart = new Cart();
                cart.setGuid(guid);
                cart.setUserName(username);
                cartService.addNewCart(cart);

                Cookie cookie2 = new Cookie("guid",guid);
                cookie2.setPath("/");
                cookie2.setMaxAge(60*60*24);
                response.addCookie(cookie2);
            }
        } else {
            boolean flag2 = true;

            String guid = null;

            if(cookie!=null) {
                for(Cookie c : cookie) {
                    if(c.getName().equals("guid")) {
                        flag2 = false;
                        guid = c.getValue();
                    }
                }
            }

            if(flag2 == true) {
                UUID uuid = UUID.randomUUID();
                String guid2 = uuid.toString();
                Cart cart2 = new Cart();
                cart2.setGuid(guid2);
                cartService.addNewCart(cart2);

                Cookie cookie3 = new Cookie("guid",guid2);
                cookie3.setPath("/");
                cookie3.setMaxAge(60*60*24);
                response.addCookie(cookie3);

            } else {
                Cart cartEntity = cartService.findFirstCartByGuid(guid);
                if(cartEntity == null) {
                    Cart cart3 = new Cart();
                    cart3.setGuid(guid);
                    cartService.addNewCart(cart3);
                }
            }

        }
    }

    public LayoutHeaderAdminVM getLayoutHeaderAdminVM() {

        LayoutHeaderAdminVM vm = new LayoutHeaderAdminVM();

        String  username = SecurityContextHolder.getContext().getAuthentication().getName();
        User userEntity = userService.findUserByUsername(username);

        if(userEntity!=null) {
            vm.setUserName(username);
            if(userEntity.getAvatar() != null) {
                vm.setAvatar(userEntity.getAvatar());
            } else vm.setAvatar("https://iptc.org/wp-content/uploads/2018/05/avatar-anonymous-300x300.png");
        }

        return vm;

    }



}
