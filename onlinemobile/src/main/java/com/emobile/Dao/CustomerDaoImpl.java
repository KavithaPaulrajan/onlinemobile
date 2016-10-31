package com.emobile.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.emobile.model.Authorities;
import com.emobile.model.BillingAddress;
import com.emobile.model.Customer;
import com.emobile.model.ShippingAddress;
import com.emobile.model.Users;
@Transactional
@Repository
public class CustomerDaoImpl implements CustomerDao{

@Autowired
private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
	return sessionFactory;
}

public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}

	public void addCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();

		System.out.println("Enters addmethod");

//add
        session.saveOrUpdate(customer);        
        Users newUser = new Users();      

        newUser.setUsername(customer.getUsername());
        newUser.setPassword(customer.getPassword());
        newUser.setEnabled(true);
      //  newUser.setCustomerId(customer.getCustomerId());
    	session.saveOrUpdate(newUser);
//added
        
        
		Authorities authorities=new Authorities();
		authorities.setUsername(customer.getUsername());
		authorities.setAuthorities("ROLE_USER");
		
		//Users users=customer.getUsers();
		System.out.println("test");
		//users.setEnabled(true);
		//session.saveOrUpdate(customer);
	//	session.saveOrUpdate(newUser);
		session.saveOrUpdate(authorities);
		
		BillingAddress billingaddress=new BillingAddress();
		session.saveOrUpdate(billingaddress);
		
		ShippingAddress shippingaddress=new ShippingAddress();
		session.saveOrUpdate(shippingaddress);
		
		/*session.save(authorities);
		session.save(users);
		session.save(customer);*/
	
	}


}
