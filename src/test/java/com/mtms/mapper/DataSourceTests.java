package com.mtms.mapper;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class DataSourceTests {
	// root-context.xml에 있는 커넥션 풀 가져올 테스트
	
	@Setter (onMethod_ = @Autowired)
	private DataSource dataSource;
	
	@Setter (onMethod_ = @Autowired)
	private SqlSessionFactory sqlSessionFactory;
	
	@Test
	public void testMyBatis() {
		try(SqlSession sqlSession = sqlSessionFactory.openSession();
				Connection con = dataSource.getConnection()
				){
			log.info(sqlSession);
			log.info(con);
			log.info("OK");
		} catch(Exception e) {
			fail(e.getMessage());
		}
	}
	
//	@Test
	public void testConnection() {
		try(Connection con = dataSource.getConnection()){
			log.info(con);
		} catch(Exception e) {
			fail(e.getMessage());
		}
	}
	
	
}
