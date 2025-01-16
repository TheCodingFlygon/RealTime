# Hour
$time set $(hour)000t
time add 18000t

# Minutes/seconds
$time add $(minute)t
$time add $(second)t

#tellraw @a {"text":"TIME3"}
#tellraw @a {"nbt":"hour","storage":"realtime:time"}
#tellraw @a {"nbt":"minute","storage":"realtime:time"}
#tellraw @a {"nbt":"second","storage":"realtime:time"}

gamerule sendCommandFeedback false