package Service.ServiceImplement;

import java.util.List;

import DAO.CategoryDao;
import DAO.DAOImplement.CategoryDaoImpl;
import Model.Category;
import Service.CategoryService;

public class CategoryServiceImpl implements CategoryService {

    private CategoryDao categoryDao = new CategoryDaoImpl();

    @Override
    public void insert(Category category) {
        categoryDao.insert(category);
    }

    @Override
    public void edit(Category category) {
        Category oldCategory = categoryDao.get(category.getCategoryid());
        if (oldCategory != null) {
            oldCategory.setCategoryname(category.getCategoryname());
            oldCategory.setImages(category.getImages());
            oldCategory.setStatus(category.getStatus());
            categoryDao.edit(oldCategory);
        }
    }

    @Override
    public void delete(int id) {
        categoryDao.delete(id);
    }

    @Override
    public Category get(int id) {
        return categoryDao.get(id);
    }

    @Override
    public Category get(String name) {
        return categoryDao.get(name);
    }

    @Override
    public List<Category> getAll() {
        return categoryDao.getAll();
    }

    @Override
    public List<Category> search(String keyword) {
        return categoryDao.search(keyword);
    }
}