package web.models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import web.beans.Category;

public class CategoryModel {
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(Category category) {
		String sql = "INSERT INTO category(name) VALUES ('" + category.getName() + "')";
		return template.update(sql);
	}
	
	public int update(Category category) {
		String sql = "UPDATE category SET name = '" + category.getName() + "' WHERE id=" + category.getId();
		return template.update(sql);
	}
	
	public int delete(int id) {
		String sql = "DELETE FROM category WHERE id=" + id;
		return template.update(sql);
	}
	
	public Category getCategoryId(int id) {
		String sql = "SELECT * FROM Category WHERE id=" + id;
		return template.queryForObject(sql, new BeanPropertyRowMapper<Category>(Category.class));
	}
	
	public List<Category> getCategoryes() {
		return template.query("SELECT * FROM Category", new RowMapper<Category>() {
			public Category mapRow(ResultSet rs, int row) throws SQLException {
				Category c = new Category();
				c.setId(rs.getInt("id"));
				c.setName(rs.getString("name"));
				return c;
			}
		});
	}
	
}
