text1 = "`0SURG TOOL 21/1 AT -- `2TKOC `0SURG TOOL 21/1 AT -- `2TKOC `0SURG TOOL 21/1 AT -- `2TKOC `0SURG TOOL 21/1 AT -- `2TKOC"
DELAY = 4000
world = "BUYSURGS"
outworld = "MEMEKCROT999"
kordinatX = 61-1 --68
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
        for i=12,1,-1 do
                say(text1)
                sleep(13000)
                say("/love")
                sleep(DELAY)
        end
    end
    sleep(1000)
    sendPacket(3,"action|join_request\nname|"..outworld)
    sleep(60000)
end

while true do
    ccek()
end