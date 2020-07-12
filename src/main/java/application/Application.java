package application;

import application.data.service.UserService;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.support.SpringBootServletInitializer;


@SpringBootApplication
public class Application extends SpringBootServletInitializer {

    public static final Logger logger = LogManager.getLogger(Application.class) ;

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
        logger.info("Start application");
    }
}
