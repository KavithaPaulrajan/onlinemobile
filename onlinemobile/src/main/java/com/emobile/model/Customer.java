package com.emobile.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="customer")
public class Customer implements Serializable {
	
@Id
@Column(name="customerId")
//@GeneratedValue/*(strategy=GenerationType.AUTO)*/
//@GeneratedValue(strategy = GenerationType.IDENTITY)
@GeneratedValue(strategy = GenerationType.TABLE)
private Integer customerId;
private String customerName;
private String customerEmail;
private String customerPhone;
private String username;
private String password;

/*@OneToOne
@JoinColumn(name="username")
private Users users;*/

public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="billingaddressid")
private BillingAddress billingAddress;

@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="shippingaddressid")
private ShippingAddress shippingAddress;

public int getCustomerId() {
	return customerId;
}
public void setCustomerId(Integer customerId) {
	this.customerId = customerId;
}
public String getCustomerName() {
	return customerName;
}
public void setCustomerName(String customerName) {
	this.customerName = customerName;
}
public String getCustomerEmail() {
	return customerEmail;
}
public void setCustomerEmail(String customerEmail) {
	this.customerEmail = customerEmail;
}
public String getCustomerPhone() {
	return customerPhone;
}
public void setCustomerPhone(String customerPhone) {
	this.customerPhone = customerPhone;
}
/*public Users getUsers() {
	return users;
}
public void setUsers(Users users) {
	this.users = users;
}*/

public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public BillingAddress getBillingAddress() {
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
}

}
