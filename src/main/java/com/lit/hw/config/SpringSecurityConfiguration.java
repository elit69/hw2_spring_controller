package com.lit.hw.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SpringSecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private DataSource dataSource;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {		
		auth.jdbcAuthentication()
			.dataSource(dataSource)
			.usersByUsernameQuery("SELECT username,password,enable FROM tbuser WHERE username=?")
			.authoritiesByUsernameQuery("SELECT username,role FROM tbuser WHERE username=? ");		
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			//.httpBasic()
			//.and()
			.formLogin()
                  .loginPage("/login")
              //  .usernameParameter("username")
              //  .passwordParameter("password")
			.and()
			.authorizeRequests()				
				.antMatchers("/resources/**").permitAll()
				.antMatchers("/login").permitAll()//hasRole("ANONYMOUS");
				.antMatchers("/logout").permitAll()
				.antMatchers("/admin/**").hasAnyRole("ADMIN", "AUTHOR");
			//.and().csrf().disable();						
		http.exceptionHandling().accessDeniedPage("/403");
	}
	
}