package model.presidio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
			String sql = "INSERT INTO presidio(nomePresidio, estadoPresidio, cidadePresidio, tipoPresidio) VALUES (?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, presidio.getNomePresidio());
			stmt.setString(2, presidio.getEstadoPresidio());
			stmt.setString(3, presidio.getCidadePresidio());
			stmt.setString(4, presidio.getTipoPresidio());


			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void remover(int id) {

		try {
			String sql = "DELETE FROM presidio WHERE idPresidio = ?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, id);
			stmt.execute();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	//====================daivson - listar ===================================//

	public List<Presidio> listar() {

		try {
			List<Presidio> listaPresidio = new ArrayList<Presidio>();

			String sql = "SELECT * FROM presidio";
			PreparedStatement stmt = this.connection.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Presidio presidios = new Presidio();

				presidios.setIdPresidio(rs.getInt("idPresidio"));
				presidios.setNomePresidio(rs.getString("nomePresidio"));
				presidios.setEstadoPresidio(rs.getString("estadoPresidio"));
				presidios.setCidadePresidio(rs.getString("cidadePresidio"));
				presidios.setTipoPresidio(rs.getString("tipoPresidio"));


				listaPresidio.add(presidios);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listaPresidio;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	//==================================================================================//


	public void alterar(Presidio presidio) {

		try {
			String sql = "UPDATE Presidio SET nomePresidio=?, estadoPresidio=?, cidadePresidio=?, tipoPresidio=? WHERE idPresidio = ? ";
			PreparedStatement stmt = connection.prepareStatement(sql);


			stmt.setString(1, presidio.getNomePresidio());
			stmt.setString(2, presidio.getEstadoPresidio());
			stmt.setString(3, presidio.getCidadePresidio());
			stmt.setString(4, presidio.getTipoPresidio());
			stmt.setInt(5, presidio.getIdPresidio());


			stmt.execute();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Presidio buscarPorId(int id) {

		try {


			String sql = "SELECT * FROM presidio where idPresidio = ?";
			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();



			Presidio presidio = new Presidio();
			if (rs.next()) {
				presidio.setIdPresidio(rs.getInt("idPresidio"));
				presidio.setNomePresidio(rs.getString("nomePresidio"));
				presidio.setEstadoPresidio(rs.getString("estadoPresidio"));
				presidio.setCidadePresidio(rs.getString("cidadePresidio"));
				presidio.setTipoPresidio(rs.getString("tipoPresidio"));

			}




			rs.close();
			stmt.close();
			connection.close();

			return presidio;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Presidio> pesquisar(String nomePresidio, String estadoPresidio) {
		try {
			List<Presidio> listaProduto = new ArrayList<Presidio>();
			PreparedStatement stmt = null;

			if (!nomePresidio.equals("") && (estadoPresidio == null || estadoPresidio.isEmpty())) {
				stmt = this.connection.prepareStatement("SELECT * FROM presidio WHERE nomePresidio LIKE ? ORDER BY nomePresidio");
				stmt.setString(1, "%" + nomePresidio + "%");

			} else if (nomePresidio.equals("") && estadoPresidio != null) {
				stmt = this.connection.prepareStatement("SELECT * FROM presidio WHERE estadoPresidio = ? ORDER BY nomePresidio");
				stmt.setString(1, estadoPresidio);
				
			} else if (!nomePresidio.equals("") && estadoPresidio.isEmpty()) {
				stmt = this.connection.prepareStatement("SELECT * FROM presidio WHERE nomePresidio LIKE ? AND estadoPresidio = ? ORDER BY nomePresidio");
				stmt.setString(1, "%" + nomePresidio + "%");
				stmt.setString(2, estadoPresidio);
				
			} else {
				stmt = this.connection.prepareStatement("SELECT * FROM presidio ORDER BY nomePresidio");
			}
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				listaProduto.add(montarObjeto(rs));
			}
			rs.close();
			stmt.close();
			connection.close();
			return listaProduto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	private Presidio montarObjeto(ResultSet rs) throws SQLException {

		Presidio presidio = new Presidio();
		presidio.setNomePresidio(rs.getString("nomePresidio"));
		presidio.setEstadoPresidio(rs.getString("estadoPresidio"));
		presidio.setCidadePresidio(rs.getString("cidadePresidio"));
		presidio.setIdPresidio(rs.getInt("idPresidio"));
		presidio.setTipoPresidio(rs.getString("tipoPresidio"));


		return presidio;
	}
}
