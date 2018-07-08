<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<title>Inscritos</title>
	<link rel="stylesheet" href="miestilo.css">
</head>
<body>
	<section>
		<table border= "1">
			<caption>Inscritos</caption>
			<tr> 
				<th> Nombre</th>
				<th> DNI</th>
				<th> Email </th>
				<th> Contrasenha </th>
				<th> Fecha de Nacimiento </th>
			</tr>
			<%
				int contador= 1;
				Connection conexion=null;
				String mensaje="";
				String driver="com.mysql.jdbc.driver";
				String url="jdbc:mysql://localhost:3306/catalogo?serverTimezone=UTC";
				String tabla_nombre="clientes";
				String usuario="root";
				String clave="";
				try{
					Class.forName("com.mysql.jdbc.Driver");
					conexion=DriverManager.getConnection(url,usuario,clave);
					String select_value=" SELECT * FROM "+tabla_nombre;
					Statement st=conexion.createStatement();
					ResultSet rs=st.executeQuery(select_value);
					while(rs.next()){
						out.print("<tr><td>"+rs.getObject("nombre")+"</td>");
						out.print("<td>"+rs.getObject("dni")+"</td>");
						out.print("<td>"+rs.getObject("correo")+"</td>");
						out.print("<td>"+rs.getObject("contrasena")+"</td>");
						out.print("<td>"+rs.getObject("fecha_nacimiento")+"</td></tr>");
					}
					conexion.close();
				}catch(Exception ex){
					out.println(ex.toString());
				}	
			%>
		</table>
		<br>
		<input onClick="window.location.href='registro.html'" type="button" name="submit" value="atras" />
		<input onClick="window.location.href='../index.jsp'" type="button" name="submit" value="continuar" /><br><br>
		</section>
		<section>
			<h1>Eliminar usuario</h1>
			<p>Ingrese DNI: </p>
			<form action="eliminar.jsp" method="post" >
				<input type="text" name="dni" id="dni" required>
				<input type="submit" name="submit" value="Eliminar ">
			</form>
			<br>
			<a href="../index.jsp"> Regresar a la pagina principal</a>
		</section>
</body>
</html>