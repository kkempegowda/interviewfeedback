<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login page</title>
    </head>
    <body background="<%=request.getContextPath()%>/images/bg1.jpeg" style="align:center;width=100%;height=100%; background-repeat: no-repeat;">
        <form method="post" action="login.jsp">
        
        
        <table>

<tr>
		

		
			</td>
			
			
			<td align="left"></td>
			<td align="center" ></td>
			
			 <td align="right" >  <img
					  alt="CSC Logo"
					src="<%=request.getContextPath()%>/images/CSC_logo.png"
					border="0" style="height: 80px ; width: 150px ; position: fixed; top: 0px; left: 10px; "/>   </td>   
		</tr> 


</table>
	



            <table>


	<tr>
			</td>
			
			
			<td align="left"></td>
			<td align="center" ></td>
			
			 <td align="right" >  <img
					  alt="Agility Platform Logo"
					src="<%=request.getContextPath()%>/images/AP.png"
					border="0" style="height: 80px ; width: 150px ; position: fixed; bottom: 0px; right: 30px; "/>   </td>   
		</tr> 


</table>
        <center>    

            
            
            <table border="3" width="40%" cellpadding="3" > 
       
         
                <thead>
                    <tr>
                        <th colspan="2"><font color=lavenderblush size=4 face="Verdana">Login Here</font></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><font color=tan size=4 face="Verdana">User Name</font></td>
                        <td><input type="text" name="Uname" value="" /></td>
                    </tr>
                    <tr>
                        <td><font color=tan size=4 face="Verdana">Pas sword</font></td>
                        <td><input type="password" name="Password" value="" /></td>
                    </tr>
                   
       			  	 <tr>
                    <!--  <td><font color=tan size=4 face="Verdana">Login as</font></td>
                        <td><select >
<option value="Admin">Admin</option>
<option value="User">User</option></select>


</td>-->
                    </tr>   
                
                     
          
                     
                 <!-- comment --> 
                     
                
                <tr>
                        
                        <td><input type="reset" value="Reset" /></td>
                        <td><input type="submit" value="Login as" /></td>
                    </tr> 
                    
                    <tr>
                        <td colspan="2"><a href="index.jsp">Register Now</a></td>
                    </tr>
                </tbody>
            </table>
            
 
            
            
            </center>
        </form>
    </body>
</html>