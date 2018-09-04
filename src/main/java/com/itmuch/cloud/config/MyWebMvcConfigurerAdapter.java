package com.itmuch.cloud.config;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;
import com.itmuch.cloud.config.interceptor.TestInterceptor;

@Configuration
//@EnableWebMvc//无需使用该注解，否则会覆盖掉SpringBoot的默认配置值
public class MyWebMvcConfigurerAdapter extends WebMvcConfigurerAdapter {
	
    /**
     * 拦截器配置
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        super.addInterceptors(registry);
        registry.addInterceptor(new TestInterceptor()).addPathPatterns("/**");
    }
    
    /**
     * 跨域CORS配置
     * @param registry
     */
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/cors/**")
                .allowedHeaders("*")
                .allowedMethods("POST","GET")
                .allowedOrigins("*");
    }

    
    /*****
     * 
     * 此时会注册一个默认的Handler：DefaultServletHttpRequestHandler，这个Handler也是用来处理静态文件的，它会尝试映射/*。
     * 当DispatcherServelt映射/时（/ 和/* 是有区别的），并且没有找到合适的Handler来处理请求时，就会交给DefaultServletHttpRequestHandler 来处理
     * 
     */
  /*  @Override
    public void configureDefaultServletHandling(
            DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }*/
	 /****
	  * 
	  *   此方法用来专门注册一个Handler，来处理静态资源的，例如：图片，js，css等
	  */
	 @Override
	 public void addResourceHandlers(ResourceHandlerRegistry registry) {
		 registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/css/");
		 registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/images/");
		 registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/js/");
		 registry.addResourceHandler("/fonts/**").addResourceLocations("/WEB-INF/fonts/");
		 registry.addResourceHandler("/*.html").addResourceLocations("/WEB-INF/");
	 }
	
	 @Override
     public void addViewControllers(ViewControllerRegistry registry) {
		 //registry.addViewController("/").setViewName("/index");
     }
    
	 @Override
	 public void configureViewResolvers(ViewResolverRegistry registry) {
		 registry.jsp("/WEB-INF/views/", ".jsp");
	 }
	 
	 @Override
	 public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
		 configurer.favorPathExtension(true)
		 .ignoreAcceptHeader(true)
		 .parameterName("mediaType")
		 .defaultContentType(MediaType.TEXT_HTML)
		 .mediaType("html", MediaType.TEXT_HTML)
		 .mediaType("json", MediaType.APPLICATION_JSON);
	 }
	 
   /**
     * 消息内容转换配置
     * 配置fastJson返回json转换
     * @param converters
     */
    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        //调用父类的配置
        super.configureMessageConverters(converters);
        //创建fastJson消息转换器
        FastJsonHttpMessageConverter fastConverter = new FastJsonHttpMessageConverter();
        //创建配置类
        FastJsonConfig fastJsonConfig = new FastJsonConfig();
        //修改配置返回内容的过滤
        fastJsonConfig.setSerializerFeatures(
                SerializerFeature.DisableCircularReferenceDetect,
                SerializerFeature.WriteMapNullValue,
                SerializerFeature.WriteNullStringAsEmpty
        );
        fastConverter.setFastJsonConfig(fastJsonConfig);
        //将fastjson添加到视图消息转换器列表内
        converters.add(fastConverter);
    }
}
