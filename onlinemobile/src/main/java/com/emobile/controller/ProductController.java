package com.emobile.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.emobile.model.Product;
import com.emobile.service.ProductServiceImpl;

@Controller
public class ProductController {
	
	@Autowired
	ProductServiceImpl  productService;
 
	
	 @Autowired
	    public void setProductService(ProductServiceImpl productService){
	    	this.productService = productService;
	    }
	 
	 @RequestMapping("/list")
		public String listProduct(Model model) {
			model.addAttribute("productlist",productService.listProduct());
			return "productlist";
			}
			
			@RequestMapping("/products")
		    public ModelAndView createProduct() {
		        ModelAndView model = new  ModelAndView("productspage");
				//   ModelAndView model = new  ModelAndView("");
		        model.addObject("product", new Product());
		        return model;
		    }
			
			@RequestMapping(value="/add")
			public String addProduct(@ModelAttribute(value="productpageObj") Product product, BindingResult res)
		
			{
				System.out.println("test1");	
				        
				if(product.getId()==0){									
					
					productService.addProduct(product);
				
				}
				else{
										
					productService.updateProduct(product);
				}
				System.out.println("test1");
					return "redirect:/list";
				
				} 
			
			
			
			@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
			public String showProductPage(@PathVariable("id") int id, Model model,final RedirectAttributes redirectAttributes) {
				Product product = productService.getbyid(id);
				model.addAttribute("product", product);
				return "productspage";

			}
			
			 @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
			 public String delete(@PathVariable("id") int id,Product product) {
			  System.out.println("TEST");
			  Path path=Paths.get("E:/Ecp/workspace/onlinemobile/src/main/webapp/WEB-INF/resources/" + product.getName()+ ".png");
				if(Files.exists(path))
						{
					           try {
								Files.delete(path);
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}

			  productService.deleteProduct(id);
			  return "home";
			 }
			 
}
