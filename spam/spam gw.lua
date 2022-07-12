text1 = "`0SURG TOOL 19/1 AT -- `2TKOC `0SURG TOOL 19/1 AT -- `2TKOC `0SURG TOOL 19/1 AT -- `2TKOC `0SURG TOOL 19/1 AT -- `2TKOC"
DELAY = 3500
world = "BUYSURGS"
kordinatX = 58-1 --57
kordinatY = 47-1 --45

function JoinWorld()
    sendPacket(3,"action|join_request\nname|"..world)
    sleep(4000)
end

function ccek()
    if getBot().world == world then
        findPath(kordinatX, kordinatY)
        sleep(1000)
        spam()
    else
        JoinWorld()
    end
end

function spam()
    while getBot().world == world do
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