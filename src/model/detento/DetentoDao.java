package model.detento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import model.presidio.Presidio;
import model.presidio.PresidioDao;
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
			String sql = "INSERT INTO detento (presidio_idPresidio, nomeDetento,cpfDetento, nomeMae, enderecoDetento,dataJulgamento,liberdadeProvisoria,numeroProcesso) VALUES (?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1,detento.getPresidio().getIdPresidio());
			stmt.setString(2,detento.getNomeDetento());
			stmt.setString(3,detento.getCpfDetento());
			stmt.setString(4,detento.getNomeMae());
			stmt.setString(5,detento.getEnderecoDetento());
			stmt.setDate(6, new java.sql.Date(detento.getDataJulgamento().getTime()));
			stmt.setString(7,detento.getLiberdadeProvisoria());
			stmt.setString(8,detento.getNumeroProcesso());
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
					detento.setDataJulgamento(rs.getDate("dataJulgamento"));
					detento.setLiberdadeProvisoria(rs.getString("liberdadeProvisoria"));
					detento.setNumeroProcesso(rs.getString("numeroProcesso"));

					PresidioDao dao = new PresidioDao();
					Presidio descricao  = dao.buscarPorId(rs.getInt("presidio_idPresidio"));
					detento.setPresidio(descricao);
					
					Date date = new Date();
					if(detento.getDataJulgamento().compareTo(date) > 0){
						detento.setStatus("success");	
						}else if(detento.getDataJulgamento().compareTo(date) == 0){
							detento.setStatus("warning");	
						}else if(detento.getDataJulgamento().compareTo(date) < 0){
							detento.setStatus("danger");	
						}else{
							detento.setStatus("#0000FF");
						}

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
	 public Detento buscarPorId(int id) {

			try {
				PreparedStatement stmt = connection.prepareStatement("SELECT * FROM detento WHERE idDetento = ?");
				stmt.setInt(1, id);
				ResultSet rs = stmt.executeQuery();

				Detento detento = null;

				if (rs.next()) {

					detento = new Detento();

					detento.setIdDetento(rs.getInt("idDetento"));
					detento.setNomeDetento(rs.getString("nomeDetento"));
					detento.setCpfDetento(rs.getString("cpfDetento"));
					detento.setNomeMae(rs.getString("nomeMae"));
					detento.setEnderecoDetento(rs.getString("enderecoDetento"));
					detento.setDataJulgamento(rs.getDate("dataJulgamento"));
					detento.setLiberdadeProvisoria(rs.getString("liberdadeProvisoria"));
					detento.setNumeroProcesso(rs.getString("numeroProcesso"));

					PresidioDao dao = new PresidioDao();
					Presidio descricao  = dao.buscarPorId(rs.getInt("presidio_idPresidio"));
					detento.setPresidio(descricao);		

					
				}

				rs.close();
				stmt.close();
				connection.close();

				return detento;

			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}

	 public void alterar(Detento detento) {

			try {
				String sql = "UPDATE detento SET presidio_idPresidio = ?, nomeDetento = ?, cpfDetento = ?, nomeMae = ?, enderecoDetento = ?, dataJulgamento = ?, liberdadeProvisoria = ?, numeroProcesso = ? WHERE idDetento = ?";
				PreparedStatement stmt = connection.prepareStatement(sql);
				stmt.setInt(1, detento.getPresidio().getIdPresidio());
				stmt.setString(2,detento.getNomeDetento());
				stmt.setString(3,detento.getCpfDetento());
				stmt.setString(4,detento.getNomeMae());
				stmt.setString(5,detento.getEnderecoDetento());
				stmt.setDate(6, new java.sql.Date(detento.getDataJulgamento().getTime()));
				stmt.setString(7, detento.getLiberdadeProvisoria());
				stmt.setString(8,detento.getNumeroProcesso());
				stmt.setInt(9,detento.getIdDetento());

				stmt.execute();
				connection.close();

			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
}
