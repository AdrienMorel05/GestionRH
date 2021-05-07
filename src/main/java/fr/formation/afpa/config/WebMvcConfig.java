package fr.formation.afpa.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


@Configuration
@EnableWebMvc
public class WebMvcConfig extends WebMvcConfigurerAdapter {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/styles/*").addResourceLocations("/WEB-INF/resources/css/");	
		registry.addResourceHandler("/js/*").addResourceLocations("/WEB-INF/resources/js/");	
		registry.addResourceHandler("/img/*").addResourceLocations("/WEB-INF/resources/images/");	
		
	}

//	@Override
//	public void addInterceptors(InterceptorRegistry registry) {
//
//		registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/*");
//		LocaleChangeInterceptor localeInterceptor = new LocaleChangeInterceptor();
//		localeInterceptor.setParamName("lang");
//		
//		registry.addInterceptor(localeInterceptor).addPathPatterns("/*");
//	
//	}

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
}
