<%@page session="true" import="java.sql.*" pageEncoding="UTF-8"%>
<%
Connection conexion=null;
String mensaje="";
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/ventaauto?serverTimezone=UTC";
String tabla_nombre="detalle";
String usuario="root";
String clave="root";

try{
	Class.forName("com.mysql.jdbc.Driver");
	conexion=DriverManager.getConnection(url,usuario,clave);
	String cantidad=request.getParameter("cantidad");
	String ordenventa=request.getParameter("ordenventa");
        String auto=request.getParameter("auto");

	String select_value="SELECT * FROM "+tabla_nombre +" WHERE ordenventa= "+ordenventa+" AND auto= "+auto;
	Statement st=conexion.createStatement();
        ResultSet rs=st.executeQuery(select_value);
        if(rs.next()){
            String insert_value=" DELETE FROM "+ tabla_nombre +" WHERE ordenventa= "+ordenventa+" AND auto= "+auto;
            st.executeUpdate(insert_value);
            response.sendRedirect("exito.html");
	}else{
            response.sendRedirect("error.html");
	}
	conexion.close();
}catch (Exception ex){
	out.println(ex.toString());
}
%>