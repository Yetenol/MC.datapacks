execute at @e[type=snowball] run summon minecraft:arrow ~ ~ ~ {Tags:["we_create"]}
execute as @e[type=arrow,tag=we_create] run data modify entity @s Motion set from entity @e[type=snowball,sort=nearest,limit=1] Motion
kill @e[type=minecraft:snowball]