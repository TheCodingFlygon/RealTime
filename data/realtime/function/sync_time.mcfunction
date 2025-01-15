# Get real time
data modify storage realtime:time hour set string block 0 -64 0 LastOutput 10 12
data modify storage realtime:time minute set string block 0 -64 0 LastOutput 13 15
data modify storage realtime:time second set string block 0 -64 0 LastOutput 16 18

# Sync game time with real time
function realtime:get_time with storage realtime:time
function realtime:set_time with storage realtime:time