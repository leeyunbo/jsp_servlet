package polymorphism;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {
	public static void main(String[] args) {
		/*BeanFactory beanFactory = new BeanFactory();
		TV tv = (TV)beanFactory.getBean(args[0]);*/
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContextPolymorphism.xml");
		TV tv = (TV)factory.getBean("tv");
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
		
		factory.close();
	}
}