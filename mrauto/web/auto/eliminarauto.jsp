<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/ventaauto?serverTimezone=UTC";
	String tabla_nombre="auto";
	String usuario="root";
	String clave="root";

	try{
		Class.forName("com.mysql.jdbc.Driver");
		conexion=DriverManager.getConnection(url,usuario,clave);

		String idauto=request.getParameter("idauto");


		String select_value="SELECT * FROM "+ tabla_nombre+" WHERE idauto="+idauto+";";

		Statement st=conexion.createStatement();
		ResultSet rs=st.executeQuery(select_value);
		if(rs.next()){
			String insert_value=" DELETE FROM "+ tabla_nombre +" WHERE idauto="+idauto+";";
	    	st.executeUpdate(insert_value);
                
                response.sendRedirect("exito.html");
	    }
	    else{
	    	response.sendRedirect("error.html");
		}
		conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>