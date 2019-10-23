package persistence;

import java.sql.SQLException;

import entity.Cliente;

public class ClienteDao extends Dao {
	
	public boolean cadastrar(Cliente c) throws Exception {
		
		boolean SUCCESS = false;
		
		try {
			open();
			stnt = con.prepareStatement("insert into cliente values(?, ?, ?)");
			stnt.setString(1, UtilsBanco.converterDataToBanco(c.getDataCadastro()));
			stnt.setString(2,  c.getNome());
			stnt.setString(3,  c.getEmail());
			
			
			stnt.execute();
			
			SUCCESS = true;
			
		} catch (SQLException e) {
			System.out.println(e.getErrorCode());
			System.out.println(e.getMessage());
		} finally {
			close();
		}
		
		return SUCCESS;
	}
	
	public Cliente consultar(String cpf) throws Exception {
		Cliente c = null;
		try {
			open();
			stnt = con.prepareStatement("select * from cliente where cpf = ?;");
			stnt.setString(1, cpf);
			rs = stnt.executeQuery();
			if(rs.next()){
				c = new Cliente();
				c.setNome(rs.getString("nome"));
				c.setEmail(rs.getString("email"));
				c.setTelefone(rs.getString("telefone"));
				c.setCpf(rs.getString("cpf"));
				c.setSexo(rs.getString("sexo"));
				c.setDataNascimento(UtilsBanco.converterDataBancoToGC(rs.getString("dtnasc")));
				c.setLogradouro(rs.getString("logradouro"));
				c.setNumero(rs.getInt("numero"));
				c.setCep(rs.getString("cep"));
				c.setComplemento(rs.getString("complemento"));
				c.setCidade(rs.getString("cidade"));
				c.setUf(rs.getString("uf"));
				c.setObservacoes(rs.getString("observacoes"));
			}
		} catch (SQLException e) {
				e.printStackTrace();
		}
		return null;
	}
}
