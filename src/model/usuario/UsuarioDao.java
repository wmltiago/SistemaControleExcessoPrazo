package model.usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.usuario.Usuario;
import util.ConnectionFactory;

public class UsuarioDao {

	private Connection connection;

	public UsuarioDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remover(int id) {

		try {
			String sql = "DELETE FROM usuario WHERE id = ?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, id);
			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}


	public List<Usuario> listar() {

		try {
			List<Usuario> listarUsuario = new ArrayList<Usuario>();

			String sql = "SELECT * FROM usuario ORDER BY id";
			PreparedStatement stmt = this.connection.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {



				Usuario usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setCpf(rs.getString("cpf"));
				usuario.setNome(rs.getString("nome"));
				usuario.setSenha(rs.getString("senha"));
				usuario.setEndereco(rs.getString("endereco"));
				usuario.setId_tipousuario(rs.getInt("id_tipousuario"));

				listarUsuario.add(usuario);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listarUsuario;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}



}
