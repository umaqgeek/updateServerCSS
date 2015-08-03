<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ page import = "java.util.ResourceBundle" %><%@ page import = "java.io.File" %><%@ page import = "java.net.URL" %><%@ page import = "java.util.Locale" %><%@ page import = "java.net.URLClassLoader" %>
<% 
File file = new File("C:\\temp");
URL[] urls = {file.toURI().toURL()};
ClassLoader loader = new URLClassLoader(urls);
ResourceBundle resource = ResourceBundle.getBundle("test", Locale.getDefault(), loader);	

String version_jar=resource.getString("version_jar");
String version_db=resource.getString("version_db"); 
%>
<%=version_jar%>%<%=version_db%>