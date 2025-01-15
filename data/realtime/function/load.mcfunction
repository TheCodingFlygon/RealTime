# Setup
scoreboard objectives add seconds_to_tick dummy

gamerule doDaylightCycle false
setblock 0 -64 0 bedrock
setblock 0 -64 0 command_block{TrackOutput:1b,auto:1b,Command:"help me"}

scoreboard players set World seconds_to_tick -2