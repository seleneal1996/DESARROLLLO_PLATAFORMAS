<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/catalogo?serverTimezone=UTC";
	String tabla_nombre="clientes";
	String usuario="root";
	String clave="";

	try{
		Class.forName("com.mysql.jdbc.Driver");
		conexion=DriverManager.getConnection(url,usuario,clave);

		String dni=request.getParameter("dni");


		String select_value="SELECT * FROM "+ tabla_nombre+" WHERE dni='"+dni+"';";

		Statement st=conexion.createStatement();
		ResultSet rs=st.executeQuery(select_value);
		if(rs.next()){
			String insert_value=" DELETE FROM "+ tabla_nombre +" WHERE dni='"+dni+"';";
	    	st.executeUpdate(insert_value);
	    	response.sendRedirect("inscritos.jsp");
	    }
	    else{
	    	out.print("<script>alert('El usuario no Existe'); window.location.replace('inscritos.jsp');</script>");
		}
		conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>