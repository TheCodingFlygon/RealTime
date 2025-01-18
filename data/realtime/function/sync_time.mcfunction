# Get real time
data modify storage realtime:time hour set string block 0 -64 0 LastOutput 10 12
data modify storage realtime:time minute set string block 0 -64 0 LastOutput 13 15
data modify storage realtime:time second set string block 0 -64 0 LastOutput 16 18

# Send time message
execute if score World time_message matches 0 run tellraw @a [{"text":"[Realtime] The current time is "},{"nbt":"hour","storage":"realtime:time"},{"text":":"},{"nbt":"minute","storage":"realtime:time"},{"text":":"},{"nbt":"second","storage":"realtime:time"}]
execute if score World time_message matches 0 run scoreboard players set World time_message 1

# Sync game time with real time
function realtime:get_time with storage realtime:time
function realtime:set_time with storage realtime:time

schedule function realtime:sync_time 19t replace