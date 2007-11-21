<%@ taglib uri="/WEB-INF/taglib.tld" prefix="salmon"%>
<%@ page errorPage="ErrorPage.jsp"
   extends="com.salmonllc.jsp.JspServlet"%>
<salmon:page
   controller="switchTransaccional.controllers.AbmcServiciosEntidadController" />
<jsp:include page="templateBefore.jsp" flush="true"></jsp:include>
<salmon:form name="PageForm">
   <%@include file="message.jsp"%>
   </td>
   <!-- ********************************************************************************************* -->
   <!-- Agregar definici�n de DataSource aqu� -->
   <salmon:datasource name="dsServicio" type="MODEL"
      model="switchTransaccional.models.ServicioDistribuidoModel"
      dbprofile="switchTransaccional" autoretrieve="Never">
   </salmon:datasource>
   <salmon:datasource name="dsServEnt" type="MODEL"
      model="switchTransaccional.models.ServiciosEntidadModel"
      dbprofile="switchTransaccional" autoretrieve="Never">
   </salmon:datasource>
   <!-- ********************************************************************************************* -->
   <!-- Agregar c�digo de la p�gina aqu� -->
   <!-- ********************************************************************************************* -->
   <salmon:box name="box1" width="100%">
      <salmon:displaybox name="displaybox1" width="100%" datasource="dsServicio"
         caption="Servicio">
         <salmon:displayboxheader>
            <salmon:a href="javascript:window.history.back()" name="lnkBack">
               <salmon:text name="back" text="Regresar" font="ColumnCaptionFont" />
            </salmon:a>
         </salmon:displayboxheader>
         <salmon:displayboxcontents>
            <table width="100%">
               <tr>
                  <td><salmon:text name="idServicioCAP1" text="ID"
                     font="ColumnCaptionFont" />
                  <td>
                  <td><salmon:text name="idServicioTE1"
                     text="id goes here" font="ColumnCaptionFont"
                     datasource="dsServicio:servicio_distribuido.servicio_distribuido_id" />
                  </td>
                  <td><salmon:text name="nombreServicioCAP2"
                     text="Nombre" font="ColumnCaptionFont" />
                  <td>
                  <td><salmon:text name="nombreServicioTE2"
                     text="nombre goes here" font="ColumnCaptionFont"
                     datasource="dsServicio:servicio_distribuido.nombre" />
                  </td>
                  <td><salmon:text name="descripcionServicioTE3"
                     text="descripcion goes here"
                     font="ColumnCaptionFont"
                     datasource="dsServicio:servicio_distribuido.descripcion" />
                  </td>
               <tr>
            </table>
         </salmon:displayboxcontents>
      </salmon:displaybox>
   </salmon:box>
   <salmon:box name="box2" width="100%">
      <salmon:displaybox name="displaybox2" width="100%" datasource="dsServEnt"
         caption="Entidades habilitadas para el servicio">
         <salmon:displayboxheader>
            <salmon:input name="agregarBUT2" type="submit"
               value="Agregar" accesskey="A"></salmon:input>
            <salmon:input name="eliminarBUT3" type="submit"
               value="Eliminar" accesskey="E"></salmon:input>
            <salmon:input name="actualizarBUT4" type="submit"
               value="Grabar" accesskey="G"></salmon:input>
            <salmon:input name="cancelarBUT5" type="submit"
               value="Cancelar" accesskey="C"></salmon:input>
         </salmon:displayboxheader>
         <salmon:displayboxcontents>
            <salmon:datatable name="datatable1" width="100%"
               datasource="dsServEnt" rowsperpage="10">
               <salmon:datatableheader>
                  <salmon:tr>
                     <salmon:td>
                        <salmon:text name="selCAP3" text="-X-"
                           font="TableHeadingFont" />
                     </salmon:td>
                     <salmon:td>
                        <salmon:text name="entidadCAP4" text="Entidad"
                           font="TableHeadingFont" />
                     </salmon:td>
                     <salmon:td>
                        <salmon:text name="vigenciaCAP5" text="Vigencia"
                           font="TableHeadingFont" />
                     </salmon:td>
                  </salmon:tr>
               </salmon:datatableheader>
               <salmon:datatablerows>
                  <salmon:tr>
                     <salmon:td>
                        <salmon:input type="checkbox" name="seleccion"
                           checkedtruevalue="1"></salmon:input>
                     </salmon:td>
                     <salmon:td>
                        <salmon:lookup
                           browseimage="%ImageDirectory/Browse.gif"
                           lookupurl="%LkpProveedores"
                           name="entidadIdTE4" size="6" maxlength="15"
                           descriptiondatasource="dsServEnt:entidad_externa.nombre"
                           datasource="dsServEnt:servicios_entidad.entidad_id"
                           popupheight="450" popupwidth="500"
                           usepopup="true" showdescription="true"></salmon:lookup>
                     </salmon:td>
                     <salmon:td>
                        <salmon:input name="desdeTE5" type="text"
                           size="10" maxlength="10"
                           displayformat="dd/MM/yyyy"
                           datasource="dsServEnt:servicios_entidad.vigencia_desde">
                        </salmon:input>
                        <salmon:input name="hastaTE6" type="text"
                           size="10" maxlength="10"
                           displayformat="dd/MM/yyyy"
                           datasource="dsServEnt:servicios_entidad.vigencia_hasta">
                        </salmon:input>
                     </salmon:td>
                  </salmon:tr>
               </salmon:datatablerows>
            </salmon:datatable>
         </salmon:displayboxcontents>
      </salmon:displaybox>
   </salmon:box>
   <!-- Fin de c�digo agregado -->
</salmon:form>
<jsp:include page="templateAfter.jsp" flush="true"></jsp:include>
<salmon:endpage />
