# INTRODUCTION

GoESL is a very simple and straight forward Go package designed to interact with FreeSWITCH ESL. GoESL supports both client and server. Server is used to bind and listen for incoming FreeSWITCH messages where client is used for sending API commands. GoESL package contains few helpers which can be found in helpers.go so you can easily answer, hangup or send api events


##Technologies

Project is created with:

* Go    version:   go version go1.16.8 linux/amd64

* Freeswitch version: FreeSWITCH Version 1.10.3-release
* Postman  

#USAGE
 
* [Install](#Install)
* [Management](#Management)

## Install

* FreeSWITCH installed from:
	* https://computingforgeeks.com/how-to-install-freeswitch-pbx-on-ubuntu/

* Go installed from:

        * https://golang.org/doc/install
	
* Postman installed from:

        * https://linuxize.com/post/how-to-install-postman-on-ubuntu-20-04/
## Management

* In Go we use for creating Api program

* In Freeswitch events are done in scripts direcorty with events.lua file  and all the others things are handle by dialplan and prompt 


#TASK:-

1. Using golang create program. 
2. Connects to freeswitch over the esl channels. 
3. Originate calls and play mp3 files. 
4. In the same call do recording of the session.
5. Do recording every 10 seconds. 
6. Receive ringing , connected event, play start and play stop event, recording start and recording end event.

According to task--

1)I have install go and install goesl packages from:-.

       * go get github.com/0x19/goesl
       * 
2)Then after for connecting the freeswitch over ESL channels. I have created a program in go language i.e[ handler.go ] 
     
     * It works as Outbound ESL Server acting either as a client connecting to FreeSWITCH or as a server accepting connections from FreeSWITCH to control calls.

3)To originate call I have used handler.go file in GO  and In Freeswitch use Dialplan Directory (Default.xml) file with "Local Extension" and play mp3 with the      help of prompt directory.

4)To Record the call recording I have used events.lua in scripts direcorty of freeswitch.
 For 10 seconds recording I have made a logic according to Channel_Answer I have created a events to Start recording with START_RECORD Events  and  to Stop     Recording RECORD_STOP Events  in this between I have used for [Unique-ID] or [Event-Date-Timestamp"] to Record Every 10 seconds of file .Then After  CHANNEL_HANGUP.

5)I have Use POSTMAN for  Testing API.

6)I have use "Route.go" for Hiting Api. 

# HOW TO RUN PROJECT :-

 (i) go build
 
 (ii) ./ESL
 
 (iii) In Postman
 
     * GET      localhost:10000/  
     
     
     
  
 
   
