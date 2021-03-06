<%@ include file="../common/taglibs.jsp"%>
<body>
  <div id="wrapper">
  <h1>Event</h1>  
  <form:form method="POST" action="updateEvent">
  <input type="hidden" value="${event.eventId}" name="eventId" id="eventId"/>  
  <div class="col-2">
    <label>
     Title/Event Name
      <input placeholder="${event.eventName}" value="${event.eventName}" id="eventName" name="eventName" tabindex="1" disabled="disabled">
    </label>
  </div>
  <!--  <div class="col-2">
    <label>
     Album:
      <input placeholder="TO DO checkboxes for albums?" id="album" name="album" tabindex="2">
    </label>
  </div> -->
  
  <div class="col-3">
    <label>
      Customer
      <input placeholder="${event.customerUserId}" id="customerUserId" name="customerUserId" tabindex="3" value="${event.customerUserId}" disabled="disabled">
    </label>
  </div>
  <div class="col-3">
    <label>
     Location
      <input placeholder="${event.eventLocation}" value="${event.eventLocation}" id="eventLocation" name="eventLocation" tabindex="4" disabled="disabled">
    </label>
  </div>
  <div class="col-3">
    <label>
     City
      <input placeholder="${event.eventCity}" value="${event.eventCity}" id="eventCity" name="eventCity" tabindex="4" disabled="disabled">
    </label>
  </div>
  
  <div class="col-4">
    <label>
      Date/Time
      <input placeholder="${event.eventDateTime}" value="${event.eventDateTime}" id="eventDateTime" name="eventDateTime" tabindex="6" disabled="disabled">
    </label>
  </div>
  <div class="col-4">
    <label>
      Hashtags
      <input placeholder="${event.eventHashTag}" value="${event.eventHashTag}" id="eventHashTag" name="eventHashTag" tabindex="7" disabled="disabled">
    </label>
  </div>
  <div class="col-6">
    <label>Event Description
    <input placeholder="${event.eventDescription}" value="${event.eventDescription}" id="eventDescription" name="eventDescription" tabindex="7" disabled="disabled">
    </label>
   </div>
  
  <div class="col-submit">
    <button class="submitbtn" style="display:none" id="saveBtn">Save</button>
  </div>
  
  </form:form>
  <div class="col-submit">
    <button class="submitbtn" id="updateBtn" onclick="updateEvent();">Update Event</button>
  </div>
  
  </div>
 <script type="text/javascript">
function updateEvent() {
	document.getElementsBy
	document.getElementById("saveBtn").style="";
	document.getElementById("updateBtn").style.display="none";
	
	var inputs = document.getElementsByTagName("input");
	
	for(var i = 0; i < inputs.length; i++) {
		if(inputs[i].type == 'hidden')
			continue;
		else
			document.getElementById(inputs[i].id).disabled = false;
	}
}
</script>
<%@ include file="../common/endtaglibs.jsp"%>

</body>
</html>