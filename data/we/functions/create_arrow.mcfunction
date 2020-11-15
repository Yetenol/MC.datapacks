summon minecraft:spectral_arrow ~ ~ ~ {Tags:["we_arrow"]}
data modify entity @e[type=spectral_arrow,tag=we_arrow,distance=..2,limit=1] Motion set from entity @s Motion
scoreboard players set @e[type=spectral_arrow,tag=we_arrow,distance=..2,limit=1] we_debug 1
kill @s[type=!player]