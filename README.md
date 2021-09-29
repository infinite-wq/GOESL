# GOESL
eslgo is a FreeSWITCH™ ESL library for GoLang. eslgo was written from the ground up in idiomatic Go for use in our production products tested handling thousands of calls per second.
WORKING:---
1. using golang create program. 
2. connects to freeswitch over the esl channels. 
3. originate calls and play mp3 files. 
4. in the same call do recording of the session.
5. do recording every 10 seconds. 
6. receive ringing , connected event, play start and play stop event, recording start and recording end event.

#HANDLE.GO

It supports both inbound and outbound event socket connections, acting either as a client connecting to FreeSWITCH or as a server accepting connections from FreeSWITCH to control calls.
A client that connects to FreeSWITCH and originate a call, pointing to an Event Socket server, which answers the call and instructs FreeSWITCH to play an audio file.

#EVENTS.LUA
Its performing recording a call in every 10 seconds.
and receive ringing , connected event, play start and play stop event, recording start and recording end event.
