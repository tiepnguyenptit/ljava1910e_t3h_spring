package application.data.repository;

import application.data.model.Category;
import application.model.viewmodel.common.ChartDataVM;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category,Integer> {

    @Query("select count(c.id) from dbo_category c")
    long getTotalCategories();

    @Query("SELECT c FROM dbo_category c " +
            "WHERE (:categoryName IS NULL OR UPPER(c.name) LIKE CONCAT('%',UPPER(:categoryName),'%'))")
    Page<Category> getListCategoryByCategoryNameContaining(Pageable pageable, @Param("categoryName") String categoryName);

    @Query("SELECT new application.model.viewmodel.common.ChartDataVM(c.name, SUM(op.amount)) FROM dbo_category c " +
            "INNER JOIN c.listProducts p " +
            "INNER JOIN p.orderProductList op " +
            "GROUP BY c.id ")
    List<ChartDataVM> getListProductOrderedByCategory();
}
