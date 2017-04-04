package model.usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.presidio.Presidio;
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
			String sql = "INSERT INTO usuario (nomeUsuario, cpfUsuario, senhaUsuario, enderecoUsuario, tipousuario_idTipousuario, idUsuario) VALUES (?,?,?,?,?,?)";
			
			PreparedStatement stmt = connection.prepareStatement(sql);
			System.out.println(usuario.getId());
					stmt.setString(1, usuario.getNomeUsuario());
					stmt.setString(2, usuario.getCpfUsuario());
					stmt.setString(3, usuario.getSenhaUsuario());
					stmt.setString(4, usuario.getEnderecoUsuario());
					stmt.setInt(5, usuario.getTipoUsuario().getIdTipoUsuario());
					stmt.setInt(6, usuario.getId());
					
					

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remover(Usuario usuario) {

		try {
			String sql = "DELETE FROM usuario WHERE idUsuario = ?";
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

			String sql = "SELECT * FROM usuario ORDER BY idUsuario";
			PreparedStatement stmt = this.connection.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {



				Usuario usuario = new Usuario();
				usuario.setId(rs.getInt("idUsuario"));
				usuario.setCpfUsuario(rs.getString("cpfUsuario"));
				usuario.setNomeUsuario(rs.getString("nomeUsuario"));
				usuario.setSenhaUsuario(rs.getString("senhaUsuario"));
				usuario.setEnderecoUsuario(rs.getString("enderecoUsuario"));
				
				TipoUsuarioDao dao = new TipoUsuarioDao();
				TipoUsuario tipousuario = dao.buscarPorId(rs.getInt("tipousuario_idTipousuario"));
				usuario.setTipoUsuario(tipousuario);
				

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

	public void alterar(Usuario usuario) {

		try {
			String sql = "UPDATE usuario SET nomeUsuario = ?, cpfUsuario = ?, tipousuario_idTipousuario=?, enderecoUsuario = ? WHERE idUsuario = ?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setString(1, usuario.getNomeUsuario());
			stmt.setString(2, usuario.getCpfUsuario());
			//stmt.setString(3, usuario.getSenhaUsuario());
			stmt.setString(4, usuario.getEnderecoUsuario());
			stmt.setInt(3, usuario.getTipoUsuario().getIdTipoUsuario());
			stmt.setInt(5, usuario.getId());
			

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public Usuario buscarPorId(int id) {

		try {
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM usuario WHERE idUsuario = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			Usuario usuario = null;

			if (rs.next()) {

				usuario = new Usuario();

				usuario.setId(rs.getInt("idUsuario"));
				usuario.setNomeUsuario(rs.getString("nomeUsuario"));
				usuario.setCpfUsuario(rs.getString("cpfUsuario"));
				usuario.setEnderecoUsuario(rs.getString("enderecoUsuario"));				

				
			}

			rs.close();
			stmt.close();
			connection.close();

			return usuario;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	
	public List<Usuario> pesquisar(Usuario usuario) {
		try {
			List<Usuario> listaProduto = new ArrayList<Usuario>();
			PreparedStatement stmt = null;

			if (!usuario.getNomeUsuario().equals("") && (usuario.getCpfUsuario() == null || usuario.getCpfUsuario().isEmpty())) {
				stmt = this.connection.prepareStatement("SELECT * FROM usuario WHERE nomeUsuario LIKE ? ORDER BY nomeUsuario");
				stmt.setString(1, "%" + usuario.getNomeUsuario() + "%");

			} else if (usuario.getNomeUsuario().equals("") && usuario.getCpfUsuario() != null) {
				stmt = this.connection.prepareStatement("SELECT * FROM usuario WHERE cpfUsuario = ? ORDER BY nomeUsuario");
				stmt.setString(1, usuario.getCpfUsuario());
				
			} else if (!usuario.getNomeUsuario().equals("") && usuario.getCpfUsuario() != null) {
				stmt = this.connection.prepareStatement("SELECT * FROM usuario WHERE nomeUsuario LIKE ? AND cpfUsuario = ? ORDER BY nomeUsuario");
				stmt.setString(1, "%" + usuario.getNomeUsuario() + "%");
				stmt.setString(2, usuario.getCpfUsuario());
				
			} else {
				stmt = this.connection.prepareStatement("SELECT * FROM usuario ORDER BY nomeUsuario");
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

	private Usuario montarObjeto(ResultSet rs) throws SQLException {

		Usuario usuario = new Usuario();
		usuario.setId(rs.getInt("idUsuario"));
		usuario.setCpfUsuario(rs.getString("cpfUsuario"));
		usuario.setNomeUsuario(rs.getString("nomeUsuario"));
		usuario.setSenhaUsuario(rs.getString("senhaUsuario"));
        usuario.setEnderecoUsuario(rs.getString("enderecoUsuario"));

		return usuario;
	}
	
	public Usuario buscarUsuario(Usuario usuario) {
		try {
		Usuario usuarioConsultado = null;
		PreparedStatement stmt = this.connection.prepareStatement("select * from usuario where cpfUsuario = ? and senhaUsuario = ?");
		stmt.setString(1, usuario.getCpfUsuario());
		stmt.setString(2, usuario.getSenhaUsuario());
		ResultSet rs = stmt.executeQuery();
		if (rs.next()) {
		usuarioConsultado = montarObjeto(rs);
		}
		rs.close();
		stmt.close();
		return usuarioConsultado;
		} catch (SQLException e) {
		throw new RuntimeException(e);
		}
		}

}
