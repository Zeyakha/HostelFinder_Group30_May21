package hostelfinder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import hostelfinder.entites.hostelGetter;


public class HostelGetterMapper implements RowMapper<hostelGetter> {

	public hostelGetter mapRow(ResultSet rs, int rowNum) throws SQLException {
		hostelGetter hg=new hostelGetter();
		hg.setHostelname(rs.getString("hostelname"));
		hg.setDescription(rs.getString("description"));
		hg.setPath(rs.getString("imgpath"));
		hg.setRent(rs.getString("rent"));
		return hg;
	}

}
