# CyberPunkRainMeter
Cyberpunk themed stylized desktop navigation using Rainmeter.
Author: LJ
Verison: 1.0

TABLE OF CONTENTS
-1. Introduction
-2. First Time Setup
-3. Adjusting Values
-----Changing IP values
-----Server Ping Rate (Rate your computer pings the designated server)
-----Offline Threshold
-----Upload/Download update rate
-----Style: font color/size/type
-4. Adding Meters
-----Adding additional IP address meter under a network header
-----Adding another network header

1.INTRODUCTION
  The cyberpunk network status rainmeter displays all your network information plus the server status of your
  favorite games and sites. It is based off of a network status meter with a server ping plugin and edited for 
  a nice simple style. This is my first rainmeter project, and want to give a ton of credit to this network status 
  rainmeter!
  https://visualskins.com/skin/network-meter

  Also borrowed from this skin:
  https://forum.rainmeter.net/viewtopic.php?t=17876
  
  Using a text editior with a find and replace function will save you a ton of time. This code is very redundant, so
  I suggest you use a text editor like sublime text 3.
  
  Useful vocabulary:
  
  MEASURE: A function that can return a value when called. 
          Example-
            [MeasureIPLan]              <------Measure name
            Measure=Plugin              <------Measure Type (Other measure types include String, Calc, etc)
            Plugin=SysInfo
            SysInfoType=IP_ADDRESS
            SysInfoData=Best
            DynamicVariables=1
  
  METER: A graphical element. Any element whether it is a string, graph, box, or icon is controlled by a meter, and
  may hold the value of a measure.
          Example-
            [MeterOverwatch1]                       <------Meter name
            Meter=STRING                            <------Meter type
            MeterStyle=Style                        <------Where the meter finds its font/font size/etc
            Group=games                             <------Helpful if all meter's of 'x' group need to be hidden
            X=12                                    <------Position
            Y=0
            MeasureName=MeasureOverwatchServer1     
            Text="Overwatch East:	%1"               <-----Displays measure value where %1 is
            Hidden=1                                <----- 1 equals meter is hidden. 0 equals meter is showing.
            
2.First Time Setup
    For setup the only major thing to do is replace the current IP address values with the ones you want. All 
    measures under the Local Network Devices section and the Commonly Used Sites and Game Servers" section hold 
    IP addresses. The variable "DestAddress" holds the IP address value. If the measure name is changed, it needs 
    to be changed at every place the measure is referenced (This is where "find and replace" is super helpful). 
    The same goes if any meter names are changed.
    
3.ADJUSTING VALUES

    Changing IP address values: All measures under the Local Network Devices section and the Commonly Used Sites 
    and Game Servers" section hold IP addresses. The variable "DestAddress" holds the IP address value.
    
    Server Ping Rate: Measures under the Local Network Devices section and the Commonly Used Sites 
    and Game Servers" section hold the variable "Timeout". Timeout controls how often the plugin will ping the
    destination address. The value 1000 is equal to 1 sec. 
    
    More documentation: https://docs.rainmeter.net/manual/plugins/ping/
    
    Offline Threshold: A server is considered offline if the ping is above 1000. The threshold can be changed by
    by altering the value of "IfBelowValue" and "IfAboveValue" with the measures found in the Local Network Devices
    and Commonly Used Sites.
    
    Upload/Download update rate: The rate at which the upload/download rates refreshes. The update value at the 
    beginning code under the tag [Rainmeter] controls the refresh rate. A value of 1000 equals 1 second. 
    
    Style: The style section controls font size/color/family. Changing the size or color here will change the size 
    or color for every meter unless specified within a specific meter. The section is found near the top of the 
    code.
    
    Documentation: https://docs.rainmeter.net/manual/meters/general-options/meterstyles/
    
    
4.ADDING METERS
    Adding an IP address meter under a network header: In this example we will put a meter to display the ping I get from 
    facebook's servers

      -Choose which header to put it under (Local Network, Game Servers, or Internet Health).
      -I will the facebook ping to help judge Internet Health
      -Go to the Internet Health Drop Down Items, and create a meter called [MeterFacebook]
      -Copy meter variables and values from another meter within the Internet Health Drop Down Items
      -Make sure the group variable equals "wan", and change the text to "Facebook: %1"
      -Change value of MeasureName to "MeasureFacebook"
      -Go into the Commonly used Sites and Game Servers section and create a measure called [MeasureFacebook]
      -Copy all values from another measure within that section
      -Change the value of DestAddress to 69.63.176.13 (One of facebook's active IP address)
      -Go to [MeasureInternet] in the Network Status bar section
      -Add [MeasureFacebook] to the formula in [MeasureInternet]. MeasureInternet returns the average of the items under
        Internet Health
      -Under the Graphic and Display section go to [MeterStatus1HitBox] Add [!setOption MeterFacebook y "0"] to the 
      LeftMouseUpaction variable.
      -Do the same for [MeterStatus2HitBox]
      -In [MeterStatus3Hitbox] add [!SetOption MeterFacebook y "120"] to the LeftMouseUpaction variable.
      -Under the Drop Down Menu Hitbox section in [MeterDropDownHitbox] add [!SetOption MeterFacebook y "0"] to the 
      LeftMouseUpaction variable.
      
      Note: Adding [!SetOption Meter y "0"] sets the y position of the meter to 0 so when all menu are hidden the box 
      containing them will shrink and expand dynamically
