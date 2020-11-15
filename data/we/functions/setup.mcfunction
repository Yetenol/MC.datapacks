team add we_debug
scoreboard objectives add we_debug dummy
scoreboard objectives setdisplay sidebar.team.light_purple we_debug
team modify we_debug color light_purple
team modify we_debug prefix {"text":"[WE_DEBUG]"}

tellraw @s ["",{"text":"[WorldEdit]","color":"gold"},{"text":" Successfully installed!\n"},{"text":"[WorldEdit]","color":"gold"},{"text":" To see debug info run "},{"text":"/team join we_debug","color":"blue","clickEvent":{"action":"run_command","value":"/team join we_debug"}}]