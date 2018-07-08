<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<%@include file="includes/head.jsp" %>
<body>
<div class="bg">
    <%@include file="includes/header.jsp" %>

  <section id="content">
    <div class="sub-page">
        
        
        
            <section class="tienda">
        <h3>Los ultimos productos</h3>
        
        <div class="contenedor">
<%
        int contador= 1;
        Connection conexion=null;
        String mensaje="";
        String driver="com.mysql.jdbc.driver";
        String url="jdbc:mysql://localhost:3306/ventaauto?serverTimezone=UTC";
        String tabla_nombre="auto";
        String usuario="root";
        String clave="root";
        try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion=DriverManager.getConnection(url,usuario,clave);
                String select_value=" SELECT * FROM "+tabla_nombre;
                Statement st=conexion.createStatement();
                ResultSet rs=st.executeQuery(select_value);
                while(rs.next()){
                    out.print("<article class='producto'>");
                        out.print("<div class='product--fond'>");
                            out.print("<div class='product_inner'>");
                                out.print("<img src='assets/productos/auto1.png' width='300'>");
                                out.print("<p>"+rs.getObject("modelo")+"</p>");
                                out.print("<p>"+rs.getObject("marca")+"</p>");
                                out.print("<p>Precio S/"+rs.getObject("precio")+"</p>");
                                out.print("<button><i class='icon-basket'></i>Agregar al carrito</button>");
                            out.print("</div>");
                            out.print("<div class='product_overlay'>");
                                out.print("<h2>Agregado</h2>");
                                out.print("<i class=' icon-ok'></i>");
                            out.print("</div>");
                        out.print("</div>");
                    out.print("</article>");
                }
                conexion.close();
        }catch(Exception ex){
                out.println(ex.toString());
        }	
%>
        </div>
    </section>
        
        
    </div>
  </section>
 <%@include file="includes/foot.jsp" %>
</div>
</body>
</html>