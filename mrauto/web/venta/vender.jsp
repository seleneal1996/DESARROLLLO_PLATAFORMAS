<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/ventaauto?serverTimezone=UTC";
	String tabla_nombre="ordenventa";
	String usuario="root";
	String clave="root";

	try{
		Class.forName("com.mysql.jdbc.Driver");
		conexion=DriverManager.getConnection(url,usuario,clave);

		String idordenventa=request.getParameter("idordenventa");


		String select_value="SELECT * FROM "+ tabla_nombre+" WHERE idordenventa="+idordenventa+";";
                Statement st=conexion.createStatement();
		ResultSet rs=st.executeQuery(select_value);
                if(rs.next()){
                    String insert_value="UPDATE "+ tabla_nombre +" SET estado='A' WHERE idordenventa="+idordenventa;
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