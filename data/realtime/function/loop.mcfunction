# Updates game time in accordance with real time
execute if score World seconds_to_tick matches -1 run function realtime:sync_time

scoreboard players add World seconds_to_tick 1

execute if score World seconds_to_tick matches 72 run time add 1t
execute if score World seconds_to_tick matches 72 run scoreboard players set World seconds_to_tick 0