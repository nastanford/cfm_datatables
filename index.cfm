<cfset request.pageTitle = "Home">
<cfinclude template = "./includes/header.cfm"> 
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">

<cfquery name="links" datasource="#this.datasource#">
  SELECT * 
  FROM links
</cfquery>

<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Title</th>
                <th>ISACTIVE</th>
                <th>ISREQUIRED</th>
                <th>URL</th>
                <th>ALTERNATIVE_URL</th>
                <th>Security Group</th>
            </tr>
        </thead>
        <tbody>
          <cfoutput query="links">
            <tr>
                <td>#TITLE#</td>
                <td>#ISACTIVE#</td>
                <td>#ISREQUIRED#</td>
                <td>#URL#</td>
                <td>#ALTERNATIVE_URL#</td>
                <td>#SECURITYGROUP_ID#</td>
            </tr>
          </cfoutput>
        </tbody>
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </tfoot>
    </table>
<!---
ROLES	
SECURITYGROUP_ID	
SECURITYTYPES_ID	
--->


<script src="https://code.jquery.com/jquery-3.5.1.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js" type="text/javascript"></script>

<script>
  document.addEventListener('DOMContentLoaded', function () {
      let table = new DataTable('#example');
  });
</script>


<cfinclude template = "./includes/footer.cfm"> 
<!---
ALTERNATIVE_URL	
CATEGORY_ID	
CONTACT_EMAIL	
CREATEDBY	
CREATEDDATE	
ENDDATE	
ENDMAINTENANCE	
END_DATETIME	
ICON	
ID	
ISACTIVE	
ISREQUIRED	
LDAP_CODES	
MAINTENANCEURL	
METADATA	
ORDER_POSITION	
ROLES	
SECURITYGROUP_ID	
SECURITYTYPES_ID	
STARTDATE	
STARTMAINTENANCE	
START_DATETIME	
TITLE	
UPDATEDBY	
UPDATEDDATE	
URL	
USEMAINTENANCEURL




<cfdbinfo type="tables" datasource="#this.datasource#" name="dbdata"> 
<cfdump var="#dbdata#">


21	[empty string]	BLOGCATEGORIES	TABLE
22	[empty string]	BLOGCOMMENTS	TABLE
23	[empty string]	BLOGENTRIES	TABLE
24	[empty string]	BLOGENTRIESCATEGORIES	TABLE
25	[empty string]	BOOKS	TABLE
26	[empty string]	CALENDAR	TABLE
27	[empty string]	COUPONS	TABLE
28	[empty string]	MEETINGS	TABLE
29	[empty string]	MEMBERDOWNLOAD	TABLE
30	[empty string]	MEMBERS	TABLE
31	[empty string]	POLLRESPONSES	TABLE
32	[empty string]	POLLS	TABLE
33	[empty string]	SPONSORS	TABLE


--->