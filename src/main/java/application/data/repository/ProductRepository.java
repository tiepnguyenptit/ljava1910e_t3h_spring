package application.data.repository;

import application.data.model.Product;
import application.model.dto.ProductDTO;
import application.model.viewmodel.common.ChartDataVM;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;


public interface ProductRepository extends JpaRepository<Product,Integer> {

    @Query("select count(p.id) from dbo_product p")
    long getTotalProducts();

    @Query("SELECT p FROM dbo_product p " +
            "WHERE (:categoryId IS NULL OR (p.categoryId = :categoryId))" +
            "AND (:productName IS NULL OR UPPER(p.name) LIKE CONCAT('%',UPPER(:productName),'%'))")
    Page<Product> getListProductByCategoryOrProductNameContaining(Pageable pageable,
                                                                  @Param("categoryId") Integer categoryId,
                                                                  @Param("productName") String productName);

    @Query("SELECT new application.model.viewmodel.common.ChartDataVM(p.name, SUM(op.amount)) FROM dbo_product p " +
            "INNER JOIN p.orderProductList op " +
            "INNER JOIN op.order o " +
            "WHERE MONTH(o.createdDate) = :month " +
            "AND YEAR(o.createdDate) = :year " +
            "GROUP BY p.id " +
            "ORDER BY SUM(op.amount) DESC")
    List<ChartDataVM> getListFiveHotProduct(Pageable pageable,
                                            @Param("month")Integer month,
                                            @Param("year")Integer year);

    List<Product> findByNameContainingIgnoreCase(String name);


    @Query("SELECT new application.model.dto.ProductDTO(p.name, p.shortDesc, c.name) " +
            "FROM dbo_product p " +
            "INNER JOIN p.category c " +
            "WHERE UPPER(p.name) LIKE CONCAT('%',UPPER(:name),'%') ")
    List<ProductDTO> getListByNameContaining(@Param("name")String name);

    @Query(value = "SELECT p.name AS productName, " +
            "p.short_desc AS productShortDesc, " +
            "c.name As categoryName " +
            "FROM dbo_product p " +
            "INNER JOIN dbo_category c ON p.category_id = c.category_id " +
            "WHERE UPPER(p.name) LIKE CONCAT('%',UPPER(:name),'%')", nativeQuery = true)
    List<Object[]> getListByNameContainingNative(@Param("name")String name);

}
