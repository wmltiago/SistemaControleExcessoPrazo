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
	

	public void salvar(Usuario usuario) {

		try {
			String sql = "INSERT INTO usuario (nome, cpf, senha, endereco, id_tipousuario) VALUES (?,?,?,?,?)";
			
			PreparedStatement stmt = connection.prepareStatement(sql);
			
					stmt.setString(1, usuario.getNome());
					stmt.setString(2, usuario.getCpf());
					stmt.setString(3, usuario.getSenha());
					stmt.setString(4, usuario.getEndereco());
					stmt.setInt(5, usuario.getId_tipousuario());
					

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remover(Usuario usuario) {

		try {
			String sql = "DELETE FROM usuario WHERE id_usuario = ?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, usuario.getId());
			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}


	public List<Usuario> listar() {

		try {
			List<Usuario> listaUsuario = new ArrayList<Usuario>();

			String sql = "SELECT * FROM usuario ORDER BY id_usuario";
			PreparedStatement stmt = this.connection.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {



				Usuario usuario = new Usuario();
				usuario.setId(rs.getInt("id_usuario"));
				usuario.setCpf(rs.getString("cpf"));
				usuario.setNome(rs.getString("nome"));
				usuario.setSenha(rs.getString("senha"));
				usuario.setEndereco(rs.getString("endereco"));
				usuario.setId_tipousuario(rs.getInt("id_tipousuario"));

				listaUsuario.add(usuario);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listaUsuario;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}



}
