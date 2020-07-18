package application.data.repository;

import application.data.model.CartProduct;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface CartProductRepository extends JpaRepository<CartProduct,Integer> {

    @Query(value = "SELECT * FROM dbo_cart_product cp " +
            "WHERE cp.cart_id = :cartId  " +
            "AND cp.product_id = :productId " +
            "ORDER BY cp.cart_product_id DESC LIMIT 1",nativeQuery = true)
    CartProduct findFirstCartProductByCartIdAndProductId(@Param("cartId") int cartId, @Param("productId") int productId);

}
