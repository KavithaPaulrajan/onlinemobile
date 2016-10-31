package com.emobile.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class Users implements Serializable {
	@Id
	//@GeneratedValue(strategy=GenerationType.AUTO)
	
	//@GeneratedValue
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private Integer userid;
private String username;
private String password;
private boolean enabled;

/*@OneToOne(mappedBy="users")
private Customer customer;*/
/*private BillingAddress billingAddress;
private ShippingAddress shippingAddress;
*/

//private int customerId;

public Integer getUserid() {
	return userid;
}
public void setUserid(Integer userid) {
	this.userid = userid;
}
/*public int getCustomerId() {
	return customerId;
}
public void setCustomerId(int customerId) {
	this.customerId = customerId;
}*/
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
/*public int getUserId() {
	return userid;
}
public void setUserId(int userId) {
	this.userid = userId;
}*/
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}

public boolean isEnabled() {
	return enabled;
}
public void setEnabled(boolean enabled) {
	this.enabled = enabled;
}
/*public Customer getCustomer() {
	return customer;
}
public void setCustomer(Customer customer) {
	this.customer = customer;
}*/
/*public BillingAddress getBillingAddress() {
	return billingAddress;
}
public void setBillingAddress(BillingAddress billingAddress) {
	this.billingAddress = billingAddress;
}
public ShippingAddress getShippingAddress() {
	return shippingAddress;
}
public void setShippingAddress(ShippingAddress shippingAddress) {
	this.shippingAddress = shippingAddress;
}*/

}

