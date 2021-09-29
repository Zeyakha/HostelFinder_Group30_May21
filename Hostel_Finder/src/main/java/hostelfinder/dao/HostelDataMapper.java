package hostelfinder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import hostelfinder.entites.HostelData;

public class HostelDataMapper implements RowMapper<HostelData> {

	public HostelData mapRow(ResultSet rs, int rowNum) throws SQLException {
		HostelData hd=new HostelData();
		hd.setHostelname(rs.getString("hostelname"));
		hd.setDescription(rs.getString("description"));
		hd.setImgpath(rs.getString("imgpath"));
		return hd;
	}

}
