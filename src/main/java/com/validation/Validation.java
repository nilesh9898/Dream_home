package com.validation;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validation {
	
		  private static Pattern pattern;
		    private static Matcher matcher;
		    //Email Pattern
		    private static final String EMAIL_PATTERN =
		            "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
		                    + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

		    

		    public static boolean validateEmail(String email) {
		        pattern = Pattern.compile(EMAIL_PATTERN);
		        matcher = pattern.matcher(email)
	;
		        return matcher.matches();

		    }
	 
		    public static boolean isNotNull(String txt) {
		        return txt != null && txt.trim().length() > 0 ? true : false;
		    }

		    
		    // validating password with retype password
		    public static boolean validatePassword(String pass) {
		        if (pass != null && pass.length() > 8) {
		        	 
		        	 
		        	        // Regex to check valid password.
		        	        String regex = "(?=.*[A-Z])(?=.*[a-z])"
		        	                       + "(?=.*[@#$%^&+=])"
		        	        		       +"^(?=.*[0-9])";
		        	                       
		        	 
		        	        // Compile the ReGex
		        	        Pattern p = Pattern.compile(regex);
		        	 
		        	        // If the password is empty
		        	        // return false
		        	        if (pass == null) {
		        	            return false;
		        	        }
		        	 
		        	        // Pattern class contains matcher() method
		        	        // to find matching between given password
		        	        // and regular expression.
		        	        Matcher m = p.matcher(pass);
		        	 
		        	        // Return if the password
		        	        // matched the ReGex
		        	        m.matches();
		        	        return true;
		        	    }
		            
		        return false;
		    }


		    public static boolean UserNameHaveSpace(String userName) {

		        boolean checkSpace=false;
		        int f=0;
		        for(int i=0;i<userName.length();i++){
		            if(userName.contains(" ") ){
		                f=1;
		                checkSpace= true;
		            }
		        }
		        if(f==1){
		            return checkSpace;

		        }else{
		            return checkSpace;
		        }


		    }
		    public static boolean validateMaxMobile(String mobile) {
		        if (mobile != null && mobile.length() == 10) {
		            return true;
		        }
		        return false;
		    }

		    public static boolean validateMinMobile(String mobile) {
		        if ( mobile.length() ==10) {
		            return true;
		        }
		        return false;
		    }

		
	}


