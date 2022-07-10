text1 = "TOOLS 19/1 GO `2TKOC"
DELAY = 4000
world = "BUYSURGS"
outworld = "MEMEKCROT999"
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
    while getBot().world == world do
        findPath(kordinatX-1, kordinatY-1)  
        sleep(1000)
        for i=20,1,-1 do
                say(text1)
                sleep(DELAY)
                say("/love")
                sleep(DELAY)
                say(text1)
                sleep(DELAY)
        end
    end
    sendPacket(3, "action|quit_to_exit")
    sleep(60000)
end

while true do
    ccek()
end