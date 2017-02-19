package model.pena;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import util.ConnectionFactory;

public class PenaDao {

	private Connection connection;

	public PenaDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void salvar(Pena pena) {

		try {
			String sql = "INSERT INTO pena (nomePena) VALUES (?)";
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, pena.getNomePena());

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
