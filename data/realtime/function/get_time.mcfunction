scoreboard objectives add time dummy

scoreboard players set #minute_converter time 166667
scoreboard players set #second_converter time 2777

$scoreboard players set #real_hours time $(hour)
$scoreboard players set #real_minutes time $(minute)
$scoreboard players set #real_seconds time $(second)

#tellraw @a {"text":"SCORE"}
#tellraw @a {"score":{"name":"#real_hours","objective":"time"}}
#tellraw @a {"score":{"name":"#real_minutes","objective":"time"}}
#tellraw @a {"score":{"name":"#real_seconds","objective":"time"}}

#tellraw @a {"text":"TIME"}
#tellraw @a {"nbt":"hour","storage":"realtime:time"}
#tellraw @a {"nbt":"minute","storage":"realtime:time"}
#tellraw @a {"nbt":"second","storage":"realtime:time"}

scoreboard players operation #minute_converter time *= #real_minutes time
scoreboard players operation #second_converter time *= #real_seconds time

execute store result storage realtime:time hour int 1 run scoreboard players get #real_hours time
execute store result storage realtime:time minute int 0.0001 run scoreboard players get #minute_converter time
execute store result storage realtime:time second int 0.0001 run scoreboard players get #second_converter time

#tellraw @a {"text":"TIME2"}
#tellraw @a {"nbt":"hour","storage":"realtime:time"}
#tellraw @a {"nbt":"minute","storage":"realtime:time"}
#tellraw @a {"nbt":"second","storage":"realtime:time"}