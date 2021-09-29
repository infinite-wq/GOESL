# GOESL

eslgo is a FreeSWITCH™ ESL library for GoLang.

WORKING:---
1. Using golang create program. 
2. Connects to freeswitch over the esl channels. 
3. Originate calls and play mp3 files. 
4. In the same call do recording of the session.
5. Do recording every 10 seconds. 
6. Receive ringing , connected event, play start and play stop event, recording start and recording end event.

#HANDLE.GO

It supports outbound event socket connections, acting either as a client connecting to FreeSWITCH or as a server accepting connections from FreeSWITCH to control calls.
A client that connects to FreeSWITCH and originate a call, pointing to an Event Socket server, which answers the call and instructs FreeSWITCH to play an audio file.

#EVENTS.LUA
Its performing recording a call in every 10 seconds.
and receive ringing , connected event, play start and play stop event, recording start and recording end event.
