package user;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
	

	@Configuration // spring 설정파일
	@ComponentScan(basePackages = {"user"})
	@EnableWebMvc // spring mvc 활성화
	@EnableTransactionManagement // 트랜잭션 활성화
	
	public class MvcConfig implements WebMvcConfigurer{

		// html, css... 처리
		@Override
		public void configureDefaultServletHandling(DefaultServletHandlerConfigurer cnf) {
			cnf.enable();
		}
		
		// view 설정
		@Override
		public void configureViewResolvers(ViewResolverRegistry reg) {
			reg.jsp("/WEB-INF/view/", ".jsp");
		}
		
		// DataSource 객체 등록
		// DB접속정보 설정
		@Bean(destroyMethod = "close")
		public BasicDataSource dataSource() {
			BasicDataSource ds = new BasicDataSource();
			ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
			ds.setUrl("jdbc:mysql://localhost:3306/theproject");
			ds.setUsername("root");
			ds.setPassword("root1234");
			return ds;
		}
		
		// SqlSessionFactory
		@Bean
		public SqlSessionFactory sqlSessionFactory() throws Exception {
			SqlSessionFactoryBean ssfb = new SqlSessionFactoryBean();
			ssfb.setDataSource(dataSource());
			
			// sql이 들어있는 xml경로 설정
			PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
			ssfb.setMapperLocations(resolver.getResources("classpath:/mapper/**/*.xml")); // 클래스패스의 mapper폴더 밑의 모든 xml
			return ssfb.getObject();
		}
		
		// SqlSessionTemplate
		@Bean
		public SqlSessionTemplate sqlSessionTemplate() throws Exception {
			return new SqlSessionTemplate(sqlSessionFactory());
		}
		
		// 파일업로드
		@Bean
		public CommonsMultipartResolver multipartResolver() {
			CommonsMultipartResolver cmr = new CommonsMultipartResolver();
			cmr.setDefaultEncoding("UTF-8");
			cmr.setMaxUploadSize(1024*1024*10); // 최대업로드사이즈(바이트)
			return cmr;
		}
		
		// 트랜잭션 설정
		@Bean
		public PlatformTransactionManager transactionManager() {
			DataSourceTransactionManager tm = new DataSourceTransactionManager();
			tm.setDataSource(dataSource());
			return tm;
		}
		
	}
