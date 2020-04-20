package tw.bms.gameshop.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.bms.gameshop.model.Comment;
import tw.bms.gameshop.model.CommentDAO;

@Service
public class CommentService {

	private CommentDAO commentDao;
	
	public CommentService(){		
	}
	
	@Autowired
	public CommentService(CommentDAO commentDao) {
		this.commentDao= commentDao;
	}
	
	public Comment insertData(Comment cData) {			// 新增評論
		return commentDao.insertData(cData);
	}
	
	public List<Comment> QueryAllByProductId(int productId) { // 以商品id查詢該商品所有評論
		return commentDao.QueryAllByProductId(productId);
	}

}
