---------------------------------
---------------------------------
--                             --
--                             --
--           SCRIPT         --
--                             --
--                             --
---------------------------------
---------------------------------
ANTIHOOKFUNC = false
function RunScript(A,B,C,D,TIME)
    if A == false and B == false and C == true and D == false and ANTIHOOKFUNC == false then
        if tonumber(TIME) == tonumber(os.time()) or tonumber(TIME) == tonumber(os.time()+2) or tonumber(TIME) == tonumber(os.time() + 3) then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/MCHUB-Trash/MCHUB-Trash/main/BloxFruit/cufsafasf.lua'))() 
        else
            game.Players.LocalPlayer:kick("Time out (Check Your Internet)")
            wait(0.8)
            while true do end
        end
    end
end
---------------------------------
---------------------------------
--                             --
--                             --
--      WHITELIST SYSTEM       --
--                             --
--                             --
---------------------------------
---------------------------------

if #_G.Key ~= 12 then
    game.Players.LocalPlayer:kick("Invaid Key!")
    wait(0.8)
    while true do end
end
repeat wait() until game:IsLoaded()

function bomb(x)
    game.Players.LocalPlayer:kick(x)
    wait(0.8)
    while true do end
end

local Server = nil

-- function random whitelist #

function generate_letters(amount)
    local serial = ""
    for i = 1, amount do
        serial = serial .. string.char(math.random(97,122))
    end
    Res = serial
end
if not tostring(math.random(math.huge,math.huge)) == tostring(-2147483648) then
    bomb("ALIEN 👽🔥")
end
local random_1 = math.random(2,4)
if random_1 == 2 then
    generate_letters(2593)
elseif random_1 == 3 then
    generate_letters(4285)
elseif random_1 == 4 then
    generate_letters(1267)
else
    bomb("HUH ARE YOU OK ?")
end
if syn then
    xpcall(function()
        function q() 
        end
        if getgenv().IsBeta ~= false then
        getgenv().IsBeta = false
        g = newcclosure(function()
        end)
        end
        local a = 0
        local b = 0
            for i,v in pairs(getgc()) do
                if type(v) == "function" and is_synapse_function(v) then
                    if not islclosure(v) then
                        a = a+1
                    else
                        b = b+1
                    end
                end
            end
        if a == 273-1 or a==275-1 then
        local RE,ER = pcall(function()
            debug.getconstants(syn.request)
        end)
        if RE == false then
            
    function WHITELIST(A,B,C,D,TYPE)
        if A == false and B == true and C == true and D == false then
            local Server2 = syn.request({
                Url = "http://localhost/whitelist/Server.php?Key=".._G.Key.."&Time="..Res,
                Method = "GET"
            }).Body
            if TYPE == "WL1" then
               if tostring(#Server) == tostring(4905) then
                    if tostring(#Server2) == tostring(727) then
                        RunScript(false,false,true,false,tostring(os.time()))
                    elseif tostring(#Server2) == tostring(527) then
                        bomb("You are in Blacklist!")
                    elseif tostring(#Server2) == tostring(528) then
                        bomb("Invaid HWID")
                    elseif tostring(#Server2) == tostring(529) then
                        -- UPDATE HWID
                        RunScript(false,false,true,false,tostring(os.time()))
                    elseif tostring(#Server2) == tostring(530) then
                        bomb("Exploit not support!")
                    elseif tostring(#Server2) == tostring(531) then
                        bomb("Invaid Key!")
                    else
                        bomb("Invaid Key!!")
                    end
               end
            elseif TYPE == "WL2" then
                if tostring(#Server) == tostring(7637) then
                    if tostring(#Server2) == tostring(825) then
                        RunScript(false,false,true,false,tostring(os.time()))
                    elseif tostring(#Server2) == tostring(527) then
                        bomb("You are in Blacklist!")
                    elseif tostring(#Server2) == tostring(528) then
                        bomb("Invaid HWID")
                    elseif tostring(#Server2) == tostring(529) then
                        -- UPDATE HWID
                        RunScript(false,false,true,false,tostring(os.time()))
                    elseif tostring(#Server2) == tostring(530) then
                        bomb("Exploit not support!")
                    elseif tostring(#Server2) == tostring(531) then
                        bomb("Invaid Key!")
                    else
                        bomb("Invaid Key!!")
                    end
                end
            elseif TYPE == "WL3" then
                if tostring(#Server) == tostring(8267) then
                    if tostring(#Server2) == tostring(629) then
                        RunScript(false,false,true,false,tostring(os.time()))
                    elseif tostring(#Server2) == tostring(527) then
                        bomb("You are in Blacklist!")
                    elseif tostring(#Server2) == tostring(528) then
                        bomb("Invaid HWID")
                    elseif tostring(#Server2) == tostring(529) then
                        -- UPDATE HWID
                        RunScript(false,false,true,false,tostring(os.time()))
                    elseif tostring(#Server2) == tostring(530) then
                        bomb("Exploit not support!")
                    elseif tostring(#Server2) == tostring(531) then
                        bomb("Invaid Key!")
                    else
                        bomb("Invaid Key!!")
                    end
                end
            end
        end
    end
    Server  = syn.request({
        Url = "http://localhost/whitelist/Server.php?Time="..Res,
        Method = "GET"
    }).Body
        if tostring(#Server) == tostring(4905) then
        WHITELIST(false,true,true,false,"WL1")
    elseif tostring(#Server) == tostring(7637) then 
        WHITELIST(false,true,true,false,"WL2")
    elseif tostring(#Server) == tostring(8267) then  
        WHITELIST(false,true,true,false,"WL3")
    else
        bomb("ARE YOU MOTHER FUCKER SERIOUS ?")
    end
else
    ANTIHOOKFUNC = true
    game.Players.LocalPlayer:kick("HELLO HUMAN I AM ALIEN FROM MAR 👽")
    wait(0.8)
    while true do end
    
    end
    else
    ANTIHOOKFUNC = true
    game.Players.LocalPlayer:kick("HELLO HUMAN I AM ALIEN FROM MAR 👽")
    wait(0.8)
    end
    end,function()
    while true do end
end)

else -- KRNL MODE
    if syn then
        while true do end
    end
    local GCI = 0;
local SF = 0;
local PCC = 0;
local ALH = 0;
local GCRegister = function(C)
    if tostring(C) == 'hookfunction' then
        ALH = ALH + 1
        if ALH > 273 then
            game.Players.LocalPlayer:Kick("NOOB CRACKER")
            wait(.8)
            while true do end
        end
    end
end
while true do
    GCI = GCI + 1
    if getgc()[GCI] == nil then break; end
    local GCF = getgc()[GCI]
    local FC = false;
    if is_synapse_function(GCF) then
        SF = SF + 1
        local CPC = pcall(function() getconstants(GCF) end)
        local CPCD = pcall(function() debug.getconstants(GCF) end)
        if CPC or CPCD then
            PCC = PCC + 1
            local GCC = 0;
            while true do
                if #getconstants(GCF) == GCC or #getconstants(GCF) == GCC then break; end
                GCC = GCC + 1
                local C = CPC and getconstants(GCF)[GCC] or debug.getconstants(GCF)[GCC]
                GCRegister(C)
            end
        end
    end
end
    function WHITELIST(A,B,C,D,TYPE)
        if A == false and B == true and C == true and D == false then
            local Server2 = http_request({
                Url = "http://localhost/whitelist/Server.php?Key=".._G.Key.."&Time="..Res,
                Method = "GET"
            }).Body
            if TYPE == "WL1" then
               if tostring(#Server) == tostring(4905) then
                    if tostring(#Server2) == tostring(727) then
                        RunScript(false,false,true,false,tostring(os.time()))
                    elseif tostring(#Server2) == tostring(527) then
                        bomb("You are in Blacklist!")
                    elseif tostring(#Server2) == tostring(528) then
                        bomb("Invaid HWID")
                    elseif tostring(#Server2) == tostring(529) then
                        -- UPDATE HWID
                        RunScript(false,false,true,false,tostring(os.time()))
                    elseif tostring(#Server2) == tostring(530) then
                        bomb("Exploit not support!")
                    elseif tostring(#Server2) == tostring(531) then
                        bomb("Invaid Key!")
                    else
                        bomb("Invaid Key!")
                    end
               end
            elseif TYPE == "WL2" then
                if tostring(#Server) == tostring(7637) then
                    if tostring(#Server2) == tostring(825) then
                        RunScript(false,false,true,false,tostring(os.time()))
                    elseif tostring(#Server2) == tostring(527) then
                        bomb("You are in Blacklist!")
                    elseif tostring(#Server2) == tostring(528) then
                        bomb("Invaid HWID")
                    elseif tostring(#Server2) == tostring(529) then
                        -- UPDATE HWID
                        RunScript(false,false,true,false,tostring(os.time()))
                    elseif tostring(#Server2) == tostring(530) then
                        bomb("Exploit not support!")
                    elseif tostring(#Server2) == tostring(531) then
                        bomb("Invaid Key!")
                    else
                        bomb("Invaid Key!")
                    end
                end
            elseif TYPE == "WL3" then
                if tostring(#Server) == tostring(8267) then
                    if tostring(#Server2) == tostring(629) then
                        RunScript(false,false,true,false,tostring(os.time()))
                    elseif tostring(#Server2) == tostring(527) then
                        bomb("You are in Blacklist!")
                    elseif tostring(#Server2) == tostring(528) then
                        bomb("Invaid HWID")
                    elseif tostring(#Server2) == tostring(529) then
                        -- UPDATE HWID
                        RunScript(false,false,true,false,tostring(os.time()))
                    elseif tostring(#Server2) == tostring(530) then
                        bomb("Exploit not support!")
                    elseif tostring(#Server2) == tostring(531) then
                        bomb("Invaid Key!")
                    else
                        bomb("Invaid Key!")
                    end
                end
            end
        end
    end
    Server  = http_request({
        Url = "http://localhost/whitelist/Server.php?Time="..Res,
        Method = "GET"
    }).Body
    if tostring(#Server) == tostring(4905) then
        WHITELIST(false,true,true,false,"WL1")
    elseif tostring(#Server) == tostring(7637) then 
        WHITELIST(false,true,true,false,"WL2")
    elseif tostring(#Server) == tostring(8267) then  
        WHITELIST(false,true,true,false,"WL3")
    else
        bomb("ARE YOU MOTHER FUCKER SERIOUS ?")
    end
end
