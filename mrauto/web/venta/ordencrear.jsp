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

            Statement st=conexion.createStatement();

            String idordenventa=request.getParameter("idordenventa");
            String fecha=request.getParameter("fecha");
            String cliente_dni=request.getParameter("cliente_dni");

            String select_value="SELECT * FROM "+ tabla_nombre+" WHERE idordenventa='"+idordenventa+"'";
            ResultSet rs=st.executeQuery(select_value);
            if(rs.next()){
                    response.sendRedirect("error.html");
            }
            else{
                String insert_value=" INSERT INTO "+ tabla_nombre +" (idordenventa,fecha,cliente_dni) VALUES "+"("+idordenventa+",'"+fecha+"',"+cliente_dni+");";
                st.executeUpdate(insert_value);

                response.sendRedirect("exito.html");
            }
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

