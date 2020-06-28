package application.controller.api;


import application.data.model.Category;
import application.data.service.CategoryService;
import application.model.api.BaseApiResult;
import application.model.api.DataApiResult;
import application.model.dto.CategoryDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping(path = "/api/category")
public class CategoryApiController {

   @Autowired
   private CategoryService categoryService;

   @GetMapping("/fake")
    public BaseApiResult fakeCategory(){
      BaseApiResult result = new BaseApiResult();

      try {
         long totalCategories = categoryService.getTotalCategories();
         List<Category> categoryList = new ArrayList<>();
         for(long i = totalCategories +1; i<= totalCategories + 5; i++) {
            Category category = new Category();
            category.setName("Category " + i);
            category.setShortDesc("Category " + i + " short desc");
            category.setCreatedDate(new Date());
            categoryList.add(category);
         }
         categoryService.addNewListCategories(categoryList);
         result.setSuccess(true);
         result.setMessage("Fake list categories success !");
      } catch (Exception e) {
         result.setSuccess(false);
         result.setMessage(e.getMessage());
      }
      return result;
   }

    @PostMapping(value = "/create")
    public BaseApiResult createCategory(@RequestBody CategoryDTO dto){
        DataApiResult result = new DataApiResult();

        try {
            Category category = new Category();
            category.setName(dto.getName());
            category.setShortDesc(dto.getShortDesc());
            category.setCreatedDate(new Date());
            categoryService.addNewCategory(category);
            result.setData(category.getId());
            result.setMessage("Save category successfully: " + category.getId());
            result.setSuccess(true);
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMessage(e.getMessage());
        }
        return result;
    }

    @PostMapping("/update/{categoryId}")
    public BaseApiResult updateCategory(@PathVariable int categoryId,
                                        @RequestBody CategoryDTO dto) {
        BaseApiResult result = new BaseApiResult();

        try {
            Category category = categoryService.findOne(categoryId);
            if(category == null) {
                result.setSuccess(false);
                result.setMessage("Can't find this category");
            } else {
                category.setName(dto.getName());
                category.setShortDesc(dto.getShortDesc());
                category.setCreatedDate(new Date());
                categoryService.addNewCategory(category);
                result.setSuccess(true);
                result.setMessage("Update category successfully");
            }
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMessage(e.getMessage());
        }

        return result;
    }


    @GetMapping("/detail/{categoryId}")
    public DataApiResult detailProduct(@PathVariable int categoryId){
        DataApiResult result= new DataApiResult();

        try {
            Category categoryEntity = categoryService.findOne(categoryId);
            if(categoryEntity == null) {
                result.setSuccess(false);
                result.setMessage("Can't find this category");
            } else {
                CategoryDTO dto = new CategoryDTO();
                dto.setId(categoryEntity.getId());
                dto.setName(categoryEntity.getName());
                dto.setShortDesc(categoryEntity.getShortDesc());
                dto.setCreatedDate(categoryEntity.getCreatedDate());
                result.setSuccess(true);
                result.setData(dto);
                result.setMessage("Success");
            }
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMessage(e.getMessage());
        }

        return result;
    }

}
