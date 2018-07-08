<%@page session="true" import="java.sql.*" pageEncoding="UTF-8"%>
<%
Connection conexion=null;
String mensaje="";
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/ventaauto?serverTimezone=UTC";
String tabla_nombre="cliente";
String usuario="root";
String clave="root";

try{
	Class.forName("com.mysql.jdbc.Driver");
	conexion=DriverManager.getConnection(url,usuario,clave);
	String correo=request.getParameter("correo");
	String contrasena=request.getParameter("contrasena");

	String select_value="SELECT * FROM "+tabla_nombre +" WHERE correo= '"+correo+"'";
	Statement st=conexion.createStatement();
	ResultSet rs=st.executeQuery(select_value);
	while(rs.next()){
		if(rs.getObject("contrasena").equals(contrasena)){
		session.setAttribute("loggedin","true");
		response.sendRedirect("../autos.jsp");
		return;
	  	}
	}
	out.print("<script>alert('Usuario o contrasenha incorrectos!'); window.location.replace('../sesion.jsp');</script>");
	conexion.close();
}catch (Exception ex){
	out.println(ex.toString());
}
%>