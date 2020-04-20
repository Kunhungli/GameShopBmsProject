package tw.bms.gameshop.model;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("productDao")
public class ProductDAO {

	private SessionFactory sessionFactory;

	public ProductDAO() {
		super();
	}

	@Autowired
	public ProductDAO(@Qualifier(value = "sessionFactory") SessionFactory sessionFactory) {
		System.out.println("SessionFactory: " + sessionFactory);//TODO Delete This line
		this.sessionFactory = sessionFactory;
	}

	public List<Product> SelectAll() throws SQLException {
		return sessionFactory.getCurrentSession().createQuery("From Product", Product.class).list();
	}
	
	public Product InsertProduct(Product p) {
		if(p != null) {
			sessionFactory.getCurrentSession().save(p);
		}
		return p;
	}
	
	public boolean update(int id, Product p) {
		Product myBean = sessionFactory.getCurrentSession().get(Product.class, id);
		if(myBean!=null) {
			myBean.setProductName(p.getProductName());
			myBean.setTag(p.getTag());
			myBean.setPrice(p.getPrice());
			if(p.getProductImage()!=null) {
				myBean.setProductImage(p.getProductImage());
			}
			myBean.setUploadTime(p.getUploadTime());
			myBean.setDownloadTime(p.getDownloadTime());
			return true;
		}
		return false;
	}

	public Product SelectById(int id) {
		return sessionFactory.getCurrentSession().get(Product.class, id);
	}

	public boolean DeleteById(int id) {
		Product myBean = sessionFactory.getCurrentSession().get(Product.class, id);
		if( myBean!=null ) {
			sessionFactory.getCurrentSession().delete(myBean);
			return true;
		}
		return false;
	}

}
