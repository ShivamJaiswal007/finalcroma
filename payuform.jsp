<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>
<%@ page import="java.sql.*" %>
<%
{
	int t1=0;
String s600=(String)session.getAttribute("usernamedb");
String a101=(String)session.getAttribute("email");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from shoppingcart where uname='"+s600+"' ");
while(rs.next()){
t1=t1+rs.getInt(5);
}
session.setAttribute("TAmount",t1);
st.close();
String t2="";
String t3="";
String t4="";
String t5="";
String t6="";
String t7="";
String t8="";
String t9="";
Statement st1=con.createStatement();
ResultSet rs1=st1.executeQuery("select * from register where email='"+a101+"' ");
while(rs1.next()){
t2=rs1.getString(2);
t3=rs1.getString(3);
t4=rs1.getString(9);
t5=rs1.getString(4);
t6=rs1.getString(5);
t7=rs1.getString(6);
t8=rs1.getString(7);
t9=rs1.getString(8);
}
session.setAttribute("Eml",t2);
session.setAttribute("fname",t3);
session.setAttribute("pno",t4);
session.setAttribute("lname",t5);
session.setAttribute("add",t6);
session.setAttribute("cit",t7);
session.setAttribute("pc",t8);
session.setAttribute("stat",t9);
st1.close();
con.close();
}
%>
<%!
public boolean empty(String s)
	{
		if(s== null || s.trim().equals(""))
			return true;
		else
			return false;
	}
%>
<%!
	public String hashCal(String type,String str){
		byte[] hashseq=str.getBytes();
		StringBuffer hexString = new StringBuffer();
		try{
		MessageDigest algorithm = MessageDigest.getInstance(type);
		algorithm.reset();
		algorithm.update(hashseq);
		byte messageDigest[] = algorithm.digest();
            
		

		for (int i=0;i<messageDigest.length;i++) {
			String hex=Integer.toHexString(0xFF & messageDigest[i]);
			if(hex.length()==1) hexString.append("0");
			hexString.append(hex);
		}
			
		}catch(NoSuchAlgorithmException nsae){ }
		
		return hexString.toString();


	}
%>
<% 	
	String merchant_key="wIvqP9HH";
	String salt="X5bLGLI4ub";
	String action1 ="";
	String base_url="https://sandboxsecure.payu.in";
	int error=0;
	String hashString="";
	String udf2="";
 

	
	Enumeration paramNames = request.getParameterNames();
	Map<String,String> params= new HashMap<String,String>();
    	while(paramNames.hasMoreElements()) 
	{
      		String paramName = (String)paramNames.nextElement();
      
      		String paramValue = request.getParameter(paramName);

		params.put(paramName,paramValue);
	}
	String txnid ="";
	if(empty(params.get("txnid"))){
		Random rand = new Random();
		String rndm = Integer.toString(rand.nextInt())+(System.currentTimeMillis() / 1000L);
		txnid=hashCal("SHA-256",rndm).substring(0,20);
	}
	else
		txnid=params.get("txnid");
        udf2 = txnid;
	String txn="abcd";
	String hash="";
	String hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
	if(empty(params.get("hash")) && params.size()>0)
	{
		if( empty(params.get("key"))
			|| empty(params.get("txnid"))
			|| empty(params.get("amount"))
			|| empty(params.get("firstname"))
			|| empty(params.get("email"))
			|| empty(params.get("phone"))
			|| empty(params.get("productinfo"))
			|| empty(params.get("surl"))
			|| empty(params.get("furl"))
			|| empty(params.get("service_provider"))
	)
			
			error=1;
		else{
			String[] hashVarSeq=hashSequence.split("\\|");
			
			for(String part : hashVarSeq)
			{
				hashString= (empty(params.get(part)))?hashString.concat(""):hashString.concat(params.get(part));
				hashString=hashString.concat("|");
			}
			hashString=hashString.concat(salt);
			

			 hash=hashCal("SHA-512",hashString);
			action1=base_url.concat("/_payment");
		}
	}
	else if(!empty(params.get("hash")))
	{
		hash=params.get("hash");
		action1=base_url.concat("/_payment");
	}
		

%>
<html>

<script>
var hash='<%= hash %>';
function submitPayuForm() {
	
	if (hash == '')
		return;

      var payuForm = document.forms.payuForm;
      payuForm.submit();
    }
</script>

<body onload="submitPayuForm();">
 

<form action="<%= action1 %>" method="post" name="payuForm">
<input type="hidden" name="key" value="<%= merchant_key %>" />
      <input type="hidden" name="hash" value="<%= hash %>"/>
      <input type="hidden" name="txnid" value="<%= txnid %>" />
      <input type="hidden" name="udf2" value="<%= txnid %>" />
	  <input type="hidden" name="service_provider" value="payu_paisa" />
      <table>
        <tr>
          <td><b></b></td>
        </tr>
        <tr>
          <td></td>
          <td><input name="amount" type="hidden" value="<%=session.getAttribute("TAmount") %>" /></td>
          <td></td>
          <td><input name="firstname" type="hidden" id="firstname" value="<%= session.getAttribute("fname") %>" /></td>
        </tr>
        <tr>
          <td></td>
          <td><input name="email" id="email" type="hidden" value="<%= session.getAttribute("Eml") %>" /></td>
          <td></td>
          <td><input name="phone" type="hidden" value="<%= session.getAttribute("pno") %>" /></td>
        </tr>
        <tr>
          <td></td>
          <td colspan="3"><input name="productinfo" type="hidden" value="<%= "Croma Cart" %>" size="64" /></td>
        </tr>
        <tr>
          <td></td>
          <td colspan="3"><input name="surl" type="hidden" value="<%= "http://localhost:8080/examples/croma/web/paymentsuccess.jsp" %>" size="64" /></td>
        </tr>
        <tr>
          <td></td>
          <td colspan="3"><input name="furl" type="hidden" value="<%= "http://localhost:8080/examples/croma/web/paymentfailure.html" %>" size="64" /></td>
        </tr>
        <tr>
          <td><b>Review your Order and then Proceed</b></td>
        </tr>
        <tr>
          <td></td>
          <td><input name="lastname" type="hidden" id="lastname" value="<%= session.getAttribute("lname") %>" /></td>
          <td></td>
          <td><input name="curl" type="hidden" value="<%= "http://localhost:8080/examples/croma/web/paymentcancel.html" %>" /></td>
        </tr>
        <tr>
          <td></td>
          <td><input name="address1" type="hidden" value="<%= session.getAttribute("add") %>" /></td>
          <td></td>
          <td><input name="address2" type="hidden" value="<%= (empty(params.get("address2"))) ? "" : params.get("address2") %>" /></td>
        </tr>
        <tr>
          <td></td>
          <td><input name="city" type="hidden" value="<%= session.getAttribute("cit") %>" /></td>
          <td></td>
          <td><input name="state" type="hidden" value="<%= session.getAttribute("stat") %>" /></td>
        </tr>
        <tr>
          <td></td>
          <td><input name="country" type="hidden" value="<%= (empty(params.get("country"))) ? "" : params.get("country") %>" /></td>
          <td></td>
          <td><input name="zipcode" type="hidden" value="<%= session.getAttribute("pc") %>" /></td>
        </tr>
        <tr>
          <td></td>
          <td><input name="udf1" type="hidden" value="<%= (empty(params.get("udf1"))) ? "" : params.get("udf1") %>" /></td>
          
        <tr>
          <td></td>
          <td><input name="udf3" type="hidden" value="<%= (empty(params.get("udf3"))) ? "" : params.get("udf3") %>" /></td>
          <td></td>
          <td><input name="udf4" type="hidden" value="<%= (empty(params.get("udf4"))) ? "" : params.get("udf4") %>" /></td>
        </tr>
        <tr>
          <td></td>
          <td><input name="udf5" type="hidden" value="<%= (empty(params.get("udf5"))) ? "" : params.get("udf5") %>" /></td>
          <td></td>
          <td><input name="pg" type="hidden" value="<%= (empty(params.get("pg"))) ? "" : params.get("pg") %>" /></td>
        </tr>
		 <tr>
          
          <td>Total Amount:&nbsp;&nbsp;&nbsp;&nbsp;<%int b102=(Integer)session.getAttribute("TAmount");
										out.println(b102);%></td>
          
          <td>Name:&nbsp;&nbsp;<%String b103=(String)session.getAttribute("fname");
										out.println(b103);%></td>
										</br>
		  
        </tr>
		<tr>
		<td>E-Mail:&nbsp;&nbsp;<%String b104=(String)session.getAttribute("Eml");
										out.println(b104);%></td>
										</tr>
        <tr>
          <% if(empty(hash)){ %>
            <td colspan="4"><input type="submit" value="Proceed for Payment" /></td>
          <% } %>
        </tr>
      </table>
    </form>


</body>
</html>