package article.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import article.model.ArticleContent;
import jdbc.JdbcUtil;

public class ArticleContentDao {
	public ArticleContent insert(Connection con, ArticleContent content) throws SQLException {
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO article_content (article_no, content) " + "VALUES (?, ?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setLong(1, content.getNumber());
			pstmt.setString(2, content.getContent());
			int cnt = pstmt.executeUpdate();
			if (cnt == 1) {
				return content;
			} else {
				return null;
			}
		} finally {
			JdbcUtil.close(pstmt);
		}

	}
}
