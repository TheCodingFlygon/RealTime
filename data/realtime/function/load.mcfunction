# Setup
scoreboard objectives add time_message dummy
gamerule doDaylightCycle false
gamerule sendCommandFeedback true
setblock 0 -64 0 bedrock
setblock 0 -64 0 command_block{TrackOutput:1b,auto:1b,Command:"help me"}
schedule function realtime:sync_time 1t replace

scoreboard players set World time_message 0