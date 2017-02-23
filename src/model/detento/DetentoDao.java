package model.detento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.ConnectionFactory;

public class DetentoDao {
	
	private Connection connection;

	public DetentoDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void salvar(Detento detento) {

		try {
			String sql = "INSERT INTO detento (nomeDetento, cpfDetento, nomeMae, enderecoDetento) VALUES (?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1,detento.getNomeDetento());
			stmt.setString(2,detento.getCpfDetento());
			stmt.setString(3,detento.getNomeMae());
			stmt.setString(4,detento.getEnderecoDetento());
			
			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	 
	

	 
	 public List<Detento> listar() {

			try {
				List<Detento> listaDetento = new ArrayList<Detento>();

				String sql = "SELECT * FROM detento ORDER BY idDetento";
				PreparedStatement stmt = this.connection.prepareStatement(sql);

				ResultSet rs = stmt.executeQuery();

				while (rs.next()) {

					Detento detento = new Detento();
					
					detento.setIdDetento(rs.getInt("idDetento"));
					detento.setNomeDetento(rs.getString("nomeDetento"));
					detento.setCpfDetento(rs.getString("cpfDetento"));
					detento.setNomeMae(rs.getString("nomeMae"));
					detento.setEnderecoDetento(rs.getString("enderecoDetento"));
					
					

					listaDetento.add(detento);
				}

				rs.close();
				stmt.close();
				connection.close();

				return listaDetento;

			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
	
	 //==================================================================================//
	 
	 public void remover(int id) {

			try {
				String sql = "DELETE FROM detento WHERE idDetento = ?";
				PreparedStatement stmt = connection.prepareStatement(sql);
				stmt.setInt(1, id);
				stmt.execute();
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}


}
