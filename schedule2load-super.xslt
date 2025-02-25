<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ns="http://360Scheduling.com/Schema/dsScheduleData.xsd">

  <!-- Identity template: copies everything as is -->
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <!-- Template to match and remove all activity related -->
  <xsl:template match="ns:Appointment_Request | ns:Appointment_Response| ns:Appointment_Offer| ns:Plan_Route | ns:Plan_Resource | ns:Plan_Travel  | ns:Schedule_Event | ns:Plan | ns:Schedule_Exception | ns:Activity_Custom_URL | ns:Activity_Group | ns:Broadcast |  ns:Broadcast_Parameter |  ns:Object_Group |ns:Schedule_Exception_Data | ns:Allocation_Data | ns:Allocation | ns:Object_Group | ns:Activity | ns:Activity_Group | ns:Activity_Skill |
  ns:Activity_SLA | ns:Activity_Status | ns:Additional_Attribute | ns:Availability_Pattern | ns:Custom_URL | ns:Appointment_Offer_Response | ns:Appointment_Summary | ns:Explanation_Request | ns:Explanation_Request_Change |
  ns:Location_Region | ns:URL_String 
  | ns:URL_Parameter | ns:Plan_Break 
  | ns:External_Change_Select | ns:External_Change_Type "/>

</xsl:stylesheet>
