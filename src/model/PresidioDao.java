package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import util.ConnectionFactory;

public class PresidioDao {
	
	private Connection connection;

	public PresidioDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void salvar(Presidio presidio) {

		try {
			String sql = "INSERT INTO presidio (#####, ######, #######) VALUES (?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, presidio.getNomePresidio());
			stmt.setString(2, presidio.getLocalidade());
			stmt.setString(3, presidio.getTipoPresidio());
			
			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
