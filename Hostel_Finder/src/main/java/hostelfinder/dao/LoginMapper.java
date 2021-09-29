package hostelfinder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import hostelfinder.entites.login;

public class LoginMapper implements RowMapper<login> {

	public login mapRow(ResultSet rs, int rowNum) throws SQLException {
		login log=new login();
		log.setPassword(rs.getString("password"));
		log.setUserType(rs.getString("usertype"));
		log.setEmail(rs.getString("email"));
		return log;
	}

}
