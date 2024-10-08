<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ns="http://360Scheduling.com/Schema/dsScheduleData.xsd">

  <!-- Identity template: copies everything as is -->
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <!-- Template to match and remove RAM_Slot_Usage_Rule elements -->
  <xsl:template match="ns:Appointment_Request | ns:Appointment_Response| ns:Appointment_Offer| ns:Plan_Route | ns:Plan_Resource | ns:Plan_Travel  | ns:Schedule_Event | ns:Plan | ns:Schedule_Exception | ns:Activity_Custom_URL | ns:Broadcast |  ns:Broadcast_Parameter |  ns:Object_Group |ns:Schedule_Exception_Data | ns:Allocation_Data | ns:Allocation | ns:Object_Group | ns:Appointment_Offer_Response | ns:Appointment_Summary | ns:Explanation_Request | ns:Explanation_Request_Change "/>

</xsl:stylesheet>
