package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;

public class UserDao {

	public User findUser(String id,String pass) {
		Connection conn = null;
		User user = new User();

		try {
			// データベースへ接続
			conn = DBManager.getConnection();

			// SELECT文を準備
			String sql = "SELECT login_id, password,name FROM userInfo WHERE login_id = ?  and password = ?";

			// SELECTを実行し、結果表を取得
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, id);
			pStmt.setString(2, pass);
			ResultSet rs = pStmt.executeQuery();

			// 結果表に格納されたレコードの内容を
			// userインスタンスに設定

			while(rs.next()) {
				user.setLoginId(rs.getString("login_id"));
				user.setPassword(rs.getString("password"));
				user.setName(rs.getString("name"));
				return user;
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return null;

		} finally {
			// データベース切断
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					return null;
				}
			}
		}
		return null;
	}


}
