package web.models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import web.beans.Category;
import web.beans.News;

public class NewsModel {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int saveCategory(Category category) {
		String sql = "INSERT INTO category(name) VALUES ('" + category.getName() + "')";
		return template.update(sql);
	}

	public int updateCategory(Category category) {
		String sql = "UPDATE category SET name = '" + category.getName() + "' WHERE id=" + category.getId();
		return template.update(sql);
	}

	public int deleteCategory(int id) {
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

	public int saveNews(News news) {
		String sql = "INSERT INTO news(name, date_create, category_id, description) VALUES ('" + news.getName()
				+ "','2019-10-25'," + news.getCategoryId() + ",'" + news.getDescription() + "')";
		return template.update(sql);
	}

	public int updateNews(News news) {
		String sql = "UPDATE news SET name = '" + news.getName() + "', description = '" + news.getDescription()
				+ "' WHERE id=" + news.getId();
		return template.update(sql);
	}

	public int deleteNews(int id) {
		String sql = "DELETE FROM news WHERE id=" + id;
		return template.update(sql);
	}

	public News getNewId(int id) {
		String sql = "SELECT * FROM news WHERE id=" + id;
		return template.queryForObject(sql, new BeanPropertyRowMapper<News>(News.class));
	}

	public List<News> getNews() {
		return template.query("SELECT * FROM news", new RowMapper<News>() {
			public News mapRow(ResultSet rs, int row) throws SQLException {
				News n = new News();
				n.setId(rs.getInt("id"));
				n.setName(rs.getString("name"));
				n.setDescription(rs.getString("description"));
				n.setDateCreate(rs.getString("date_create"));
				n.setCategoryId(rs.getInt("category_id"));
				return n;
			}
		});
	}

}
