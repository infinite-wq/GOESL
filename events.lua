   script_dir = freeswitch.getGlobalVariable("script_dir")
   --     dofile(script_dir.."/logger.lua");
        if(script_dir == "/usr/local/freeswitch/scripts") then
                package.cpath ="/usr/lib/x86_64-linux-gnu/lua/5.2/?.so;" .. package.cpath
                package.path = "/usr/local/share/lua/5.1/?.lua;" .. package.path
        else
                package.cpath ="/usr/lib/x86_64-linux-gnu/lua/5.2/?.so;" .. package.cpath
                package.path = "/usr/share/lua/5.2/?.lua;" .. package.path
        end

        --general functions
        require "resources.functions.base64";
        require "resources.functions.trim";
        require "resources.functions.file_exists";
        require "resources.functions.explode";
        require "resources.functions.format_seconds";
        require "resources.functions.mkdir";
        local json = require "resources.functions.lunajson"
cnt=0;
--      package.cpath ="/usr/lib/x86_64-linux-gnu/lua/5.2/?.so;" .. package.cpath
--      package.path = "/usr/share/lua/5.2/?.lua;" .. package.path
    --    xml = require "xml";

 debug["sql"] = false;
        local json
        if (debug["sql"]) then
        json = require "resources.functions.lunajson"
        end


        dest_queue_uuid = "";
        api = freeswitch.API();
        local event_name = event:getHeader("Event-Name");
        -- freeswitch.consoleLog("notice","[events] event_name :["..event_name.."]");

        if event_name == "CHANNEL_ANSWER" then
          cnt=cnt+1;
                freeswitch.consoleLog("notice","[events] event_name : ["..event_name.."]\n");
		freeswitch.consoleLog("notice", "[events] :  Cnt : "..cnt);
                uuid = event:getHeader("Unique-ID");
                time= event:getHeader("Event-Date-Timestamp");
		cmd = "uuid_record ".. tostring(uuid) .. " start  /usr/local/freeswitch/recordings/"..tostring(uuid)..tostring(time)..".wav ".. tonumber(10);

                api_res = api:executeString(cmd);
		serialized = event:serialize('json');
                --freeswitch.consoleLog("notice", "[events] Event : ["..serialized.."]\n");
           end

        if event_name == "RECORD_STOP" then
            cnt=cnt+1;
                freeswitch.consoleLog("notice","[events] event_name : ["..event_name.."]\n");
		freeswitch.consoleLog("notice", "[events] :  Cnt : "..cnt);
                uuid = event:getHeader("Unique-ID");
                time= event:getHeader("Event-Date-Timestamp");
		cmd = "uuid_record ".. tostring(uuid) .. " start  /usr/local/freeswitch/recordings/"..tostring(uuid)..tostring(time)..".wav ".. tonumber(10);
		api_res = api:executeString(cmd);
                serialized = event:serialize('json');
		--freeswitch.consoleLog("notice", "[events] Event : ["..serialized.."]\n");

           end
-----

        if event_name == "CHANNEL_HANGUP" then
          cnt=cnt+1;
                freeswitch.consoleLog("notice","[events] event_name : ["..event_name.."]\n");
		freeswitch.consoleLog("notice", "[events] :  Cnt : "..cnt);
                uuid = event:getHeader("Unique-ID");
                time= event:getHeader("Event-Date-Timestamp");
		--cmd = "uuid_record ".. tostring(uuid) .. " start  /usr/local/freeswitch/recordings/"..tostring(uuid)..tostring(time)..".wav ".. tonumber(10);

                --api_res = api:executeString(cmd);
		serialized = event:serialize('json');
                --freeswitch.consoleLog("notice", "[events] Event : ["..serialized.."]\n");
           end
