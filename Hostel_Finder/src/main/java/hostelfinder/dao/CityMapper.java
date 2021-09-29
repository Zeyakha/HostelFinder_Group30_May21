package hostelfinder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import hostelfinder.entites.city;

public class CityMapper implements RowMapper<city> {

	public city mapRow(ResultSet rs, int rowNum) throws SQLException {
		city c=new city();
		c.setId(rs.getString("id"));
		c.setCityname(rs.getString("cityname"));
		
		return c;
	}

}
