package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.User;

public class UserDao {

	public User findUser() {
		Connection conn = null;
		User user = new User();

		try {
			// データベースへ接続
			conn = DBManager.getConnection();

			// SELECT文を準備
			String sql = "SELECT login_id, password FROM userInfo";

			// SELECTを実行し、結果表を取得
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			// 結果表に格納されたレコードの内容を
			// userインスタンスに設定
				user.setLoginId(rs.getString("login_id"));
				user.setPassword(rs.getString("password"));

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
		return user;
	}


}
