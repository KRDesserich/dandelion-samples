<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<!-- Update the current scope with extra functions needed for rendering -->
<dandelion:assets scopes="custom-rendering,custom-ajax-request" />

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Custom AJAX request</h3>
      <p>This example show how to customize the AJAX call made against the server to populate
         the table. A message shoud appear once the table redrawed.</p>
      <p>
         Note the use of the special syntax: <code>scopeToLoad#functionName</code>.
      </p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">

      <datatables:table id="myTableId" url="/persons" serverSide="true" processing="true" serverData="ajax#myRequest">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </div>
</div>