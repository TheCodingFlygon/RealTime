# Get real time
data modify storage realtime:time hour set string block 0 -64 0 LastOutput 10 12
data modify storage realtime:time minute set string block 0 -64 0 LastOutput 13 15
data modify storage realtime:time second set string block 0 -64 0 LastOutput 16 18

tellraw @a [{"text":"[Realtime] The current time is "},{"nbt":"hour","storage":"realtime:time"},{"text":":"},{"nbt":"minute","storage":"realtime:time"},{"text":":"},{"nbt":"second","storage":"realtime:time"}]
