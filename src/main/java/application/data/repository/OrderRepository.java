package application.data.repository;

import application.data.model.Order;
import application.model.viewmodel.common.ChartDataVM;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Integer> {

    @Query("SELECT o FROM dbo_order o " +
            "WHERE (:guid IS NULL OR (o.guid = :guid))" +
            "AND (:userName IS NULL OR (o.userName = :userName))")
    List<Order> findOrderByGuidOrUserName(@Param("guid") String guid, @Param("userName") String userName);

    @Query("SELECT new application.model.viewmodel.common.ChartDataVM(MONTH(o.createdDate), SUM(o.price)) FROM dbo_order o " +
            "WHERE YEAR(o.createdDate) = :year " +
            "GROUP BY MONTH(o.createdDate) ")
    List<ChartDataVM> getRevenueMonthByYear(@Param("year")Integer year);
}
