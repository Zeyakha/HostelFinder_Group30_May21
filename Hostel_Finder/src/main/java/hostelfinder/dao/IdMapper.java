package hostelfinder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import hostelfinder.entites.Id;

public class IdMapper implements RowMapper<Id> {

	public Id mapRow(ResultSet rs, int rowNum) throws SQLException {
		Id i=new Id();
		i.setId(rs.getString("id"));
		return i;
	}

}
