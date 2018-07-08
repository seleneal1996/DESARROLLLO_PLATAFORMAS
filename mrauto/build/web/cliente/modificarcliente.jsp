<%@ page import="java.sql.*"%>
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

            Statement st=conexion.createStatement();

            String dni=request.getParameter("dni");
            String nombre =request.getParameter("nombre");
            String correo=request.getParameter("correo");
            String contrasena=request.getParameter("contrasena");

            String select_value="SELECT * FROM "+ tabla_nombre+" WHERE dni="+dni;
            ResultSet rs=st.executeQuery(select_value);
            if(rs.next()){
                String insert_value="UPDATE "+ tabla_nombre +" SET nombre='"+nombre+"',correo='"+correo+"',contrasena='"+contrasena+"' WHERE dni="+dni+" ";
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

