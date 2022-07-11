text1 = "`0SURG TOOL 19/1 AT -- `2TKOC `0SURG TOOL 19/1 AT -- `2TKOC `0SURG TOOL 19/1 AT -- `2TKOC `0SURG TOOL 19/1 AT -- `2TKOC"
DELAY = 3500
world = "BUYSURGS"
kordinatX = 58  --57
kordinatY = 47  --45

function JoinWorld()
    sendPacket(3,"action|join_request\nname|"..world)
    sleep(4000)
end

function ccek()
    if getBot().world == world then
        spam()
    else
        JoinWorld()
    end
end

function spam()
    findPath(kordinatX-1, kordinatY-1)  
    while getBot().world == world do
        sleep(1000)
        for i=15,1,-1 do
                say(text1)
                sleep(10000)
                say("/love")
                sleep(DELAY)
        end
    end
    sendPacket(3, "action|quit_to_exit")
    sleep(60000)
end

while true do
    ccek()
end