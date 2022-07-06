text = "TOOLS 19/1 AT `2TKOC"
delayspam = 4000
world = "BUYSURGS"      --Name world must capital
kordinatX = 58
kordinatY = 47 --- bot 1 21, 46 bot2 55, 44

function JoinWorld()
    sendPacket(3,"action|join_request\nname|"..world)
    sleep(5000)
end
end

function ccek()
if getBot().world == world then
    spam()
else
    JoinWorld()
end
end

function spam()
while math.floor(getBot().x/32) ~= kordinatX-1 and math.floor(getBot().y/32) ~= kordinatY-1 do
sleep(200)
findPath(kordinatX-1, kordinatY-1)
sleep(1000)
end
sleep(500)
say(text)
sleep(2000)
while getBot().world == world do
say(text)
sleep(delayspam)
end
end

while true do
ccek()
end