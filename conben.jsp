<!--RESPALDO CONSULTA BENEFICIARIO-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>

<html:html>
<head>
<script language="javascript" src="<%=request.getContextPath()%>/js/consultarBeneficiario.js" type="text/javascript" ></script>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<LINK rel="STYLESHEET"  href="<%=request.getContextPath()%>/estilos/estilo-sigecof.css" media="screen,print" type="text/css">
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Beneficiarios</title>
</head>

<BODY class="app">

<DIV style="position:absolute;left:15px;top:5px;">
	<H2>Lista de Beneficiarios</H2>
</DIV>
<html:errors property="codigoSeleccionado"/>
<html:form action="/consultarBeneficiario">
<html:hidden property="paso" value="1"/>

 <DIV style="position:absolute;left:120px;top:45px;">
      <TABLE width="470px" border="1px"  bordercolor="#8080C0">
	     <TR>
			<TD width="170px" bordercolor="#FFFFFF">
				<html:select property="codigoTipoBeneSeleccionado" tabindex="4" styleClass="inputtext" styleId="tipPers" style="width:160px">	
			 		<html:option value="%">Seleccionar Tipo de Persona</html:option>
			 		<bean:define id="tiposPersona" name="consultaBeneficiarioAF" property="listaTipoBeneficiarioArray" type="java.util.Collection"/>
         	 		<html:options name="consultaBeneficiarioAF" collection="tiposPersona"  property="idTipoPersona" labelProperty="denominacion" />
				</html:select>

			</TD>
		 	<TD width="100px" bordercolor="#FFFFFF"><html:text property="codigoSeleccionado"  size="25"  styleClass="inputtext"/></TD>
			<TD width="100px" bordercolor="#FFFFFF"><html:button value="Buscar" onclick="f_buscar(this)" property=""/></TD>
			<TD width="100px" bordercolor="#FFFFFF"><html:button onclick = "self.close()"  value="Cerrar"  property="" /></TD>
		 </TR>
	  </TABLE>
   </DIV>
</html:form>

<logic:empty name="consultaBeneficiarioAF" property="listaBeneficiarioArray" >
	 <TABLE width="650px" class="midiv1" style="position:absolute;left:30px;top:90px;border: 1px solid rgb(128,128,128)"  cellspacing="0" bordercolor="#C0C0C0" cellpadding="0">
	    <TR class="colSelapp">
	    	<TD width="50px" style="border-left: medium none; border-top: 1px solid rgb(192,192,192);text-align: center; border-bottom: medium none" align="center">
	  			Tipo
			</TD>
			<TD width="100px" style="border-left: medium none; border-top: 1px solid rgb(192,192,192);text-align: center; border-bottom: medium none">
				Identificador
			</TD>
			<TD width="400px" style="border-left: medium none; border-top: 1px solid rgb(192,192,192);text-align: center; border-bottom: medium none">
				Beneficiario
			</TD>
			<TD width="100px"  style="border-left: medium none; border-top: 1px solid rgb(192,192,192);text-align: center; border-bottom: medium none">
				Categoría
			</TD>
	    </TR>
	 </TABLE>
    <DIV style="cursor:pointer;position:absolute;left:30px;top:106px;width:675px;height:300px; overflow:auto">
		<TABLE id="llenaTabla" border="1px"  bordercolor="#C0C0C0" width="650px" style="border-left: 1px solid rgb(128,128,128); border-right: 1px solid rgb(128,128,128); border-top: 0px none rgb(128,128,128); border-bottom: 1px solid rgb(128,128,128)" cellspacing="0"  cellpadding="0">
			<TR class="colSelapp" style="background-color:rgb(255,255,255);cursor:pointer">
	 		  <TD class="renglons" colspan="4" style="font-family: Tahoma; font-size: 11px; border-left: medium none; border-top: 1px solid rgb(192,192,192);text-align: center; border-bottom: medium none">
				  Debe intoducir el campo de Busqueda
	 		  </TD>
	  		</TR>
		</TABLE>
	</DIV>
</logic:empty>


<logic:notEmpty name="consultaBeneficiarioAF" property="listaBeneficiarioArray">
   <TABLE width="650px" class="midiv1" style="position:absolute;left:30px;top:90px;border: 1px solid rgb(128,128,128)"  cellspacing="0" bordercolor="#C0C0C0" cellpadding="0">
	    <TR class="colSelapp">
	    	<TD width="50px" style="border-left: medium none; border-top: 1px solid rgb(192,192,192);text-align: center; border-bottom: medium none" align="center">
	  			Tipo
			</TD>
			<TD width="100px" style="border-left: medium none; border-top: 1px solid rgb(192,192,192);text-align: center; border-bottom: medium none">
				Identificador
			</TD>
			<TD width="400px" style="border-left: medium none; border-top: 1px solid rgb(192,192,192);text-align: center; border-bottom: medium none">
				Beneficiario
			</TD>
			<TD width="100px"  style="border-left: medium none; border-top: 1px solid rgb(192,192,192);text-align: center; border-bottom: medium none">
				Categoría
			</TD>
	    </TR>
	 </TABLE><DIV style="cursor:pointer;position:absolute;left:30px;top:106px;width:675px;height:300px; overflow:auto"><TABLE id="llenaTabla" border="1px"  bordercolor="#C0C0C0" width="650px" style="border-left: 1px solid rgb(128,128,128); border-right: 1px solid rgb(128,128,128); border-top: 0px none rgb(128,128,128); border-bottom: 1px solid rgb(128,128,128)" cellspacing="0"  cellpadding="0"><logic:iterate  id="objeto" name="consultaBeneficiarioAF"  property="listaBeneficiarioArray"  type="ve.gob.mf.sigecof.oocp.gasto.negocio.to.PersonaTO"><TR class="colSelapp" style="background-color:rgb(255,255,255);cursor:pointer" onMouseOver="marcar(this);" onMouseOut="marcar(this);" onclick="javascript:actualiza('<bean:write name="objeto" property="identificador"/>','<bean:write name="objeto" property="idPersona"/>','<bean:write name="objeto" property="enteReceptor.codigo" />', '0',this)"><TD width="50px"  class="renglons" style="font-family: Tahoma; font-size: 11px; border-left: medium none; border-top: 1px solid rgb(192,192,192);text-align: center; border-bottom: medium none"><bean:write name="objeto" property="tipoIdentificador"/></TD><TD width="90px"  class="renglons" style="font-family: Tahoma; font-size: 11px; border-left: medium none; border-top: 1px solid rgb(192,192,192);text-align: center; border-bottom: medium none"><bean:write name="objeto" property="identificador"/></TD><TD width="400px"  class="renglons" style="font-family: Tahoma; font-size: 11px; border-left: medium none; border-top: 1px solid rgb(192,192,192);text-align: left; border-bottom: medium none">&nbsp;&nbsp;<bean:write name="objeto" property="nombre" /> <bean:write name="objeto" property="apellido"/></TD><TD width="110px"  class="renglons" style="font-family: Tahoma; font-size: 11px; border-left: medium none; border-top: 1px solid rgb(192,192,192);text-align: center; border-bottom: medium none"><bean:write name="objeto" property="tipoPersona.denominacion"/></TD></TR></logic:iterate></TABLE>
	</DIV>

</logic:notEmpty>

</body>
</html:html>

