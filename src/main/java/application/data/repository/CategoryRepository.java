package application.data.repository;

import application.data.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CategoryRepository extends JpaRepository<Category,Integer> {

    @Query("select count(c.id) from dbo_category c")
    long getTotalCategories();

}
