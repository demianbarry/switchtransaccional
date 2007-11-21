<%@ page errorPage="ErrorPage.jsp" extends="com.salmonllc.jsp.JspServlet"%>
<%@ taglib uri="/WEB-INF/taglib.tld" prefix="salmon"%>
<html>
<salmon:page/>
<salmon:body/>

<salmon:text name="text1" text="Error en el usuario Conectado." font="PageHeadingFont" textlocalekey="HdngYourAccInfo"/><br><br>
<salmon:font type="DefaultFont">A ocurrido un error<br>
<br>
Este error puede suceder si usted no est� conectado
<br>
o no es un usuario registrado de la aplicaci�n
<br>
o bien no tiene permisos para ejecutar esta p�gina
<br>
<br>
<br>
Por favor p�ngase en contacto con el Admisnitardor de Sistemas<br>
<br>
� con el responsable de la aplicaci�n ...<br>
<br>
</salmon:font>
<salmon:endbody/>

<salmon:endpage/>
</html>