package hostelfinder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import hostelfinder.entites.Client;

public class clientMapper implements RowMapper<Client> {

	public Client mapRow(ResultSet rs, int rowNum) throws SQLException {
		Client c=new Client();
		c.setId(rs.getString("id"));
		c.setFirstname(rs.getString("firstname"));
		c.setLastname(rs.getString("lastname"));
		c.setEmail(rs.getString("email"));
		c.setPhone(rs.getString("phone"));
		c.setDob(rs.getString("dob"));
		return c;
	}

}
