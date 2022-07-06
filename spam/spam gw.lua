text1 = "TOOLS 18/1 GO `2TKOC"
text2 = "TOOLS 18/1 GO `4TKOC"
DELAY = 5000
world = "BUYSURGS"
outworld = "MEMEKCROT999"
kordinatX = 58  --57
kordinatY = 47  --45

function JoinWorld()
    sendPacket(3,"action|join_request\nname|"..world)
    sleep(5000)
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
        for i=25,1,-1 do
                say(text1)
                sleep(DELAY)
                say(text2)
                sleep(DELAY)
        end
        sendPacket(3, "action|quit_to_exit")
        sleep(60000)
        JoinWorld()
    end
end

while true do
    ccek()
end