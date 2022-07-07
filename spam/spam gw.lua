text1 = "TOOLS 18/1 GO `2TKOC"
text2 = "TOOLS 18/1 GO `4TKOC"
DELAY = 6000
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
    findPath(kordinatX-1, kordinatY-1)  
    while getBot().world == world do
        sleep(1000)
        say(text1)
        sleep(DELAY)
        say(text2)
        sleep(DELAY)
    end
    sleep(120000)
end

while true do
    ccek()
end