package hostelfinder.dao;





import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;




public class Dao{
		public JdbcTemplate getTemplate(){
		ApplicationContext context=new ClassPathXmlApplicationContext("hostelfinder/dao/config.xml");
		JdbcTemplate template=context.getBean("jdbcTemplate",JdbcTemplate.class);
		return template;
		
	}
}
