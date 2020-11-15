execute as @a[scores={spawn=1..}] run tp @s 1125 72 613
scoreboard players set @a spawn 0
scoreboard players enable @a spawn

execute as @a[scores={desert=1..}] run tp @s 20 74 803
scoreboard players set @a desert 0
scoreboard players enable @a desert

execute as @a[scores={arena=1..}] run tp @s 1092 75 750 126 -20
scoreboard players set @a arena 0
scoreboard players enable @a arena

execute as @a[scores={paradise=1..}] run tp @s 271 67 1013
scoreboard players set @a paradise 0
scoreboard players enable @a paradise

execute as @a[scores={vulcano=1..}] run tp @s -394 51 2642
scoreboard players set @a vulcano 0
scoreboard players enable @a vulcano

execute as @a[scores={big_trees=1..}] run tp @s -836 72 397
scoreboard players set @a big_trees 0
scoreboard players enable @a big_trees

execute as @a[scores={jungle=1..}] run tp @s 691 68 2106
scoreboard players set @a jungle 0
scoreboard players enable @a jungle

execute as @a[scores={big_city=1..}] run tp @s -760 66 1685
scoreboard players set @a big_city 0
scoreboard players enable @a big_city

execute as @a[scores={castle=1..}] run tp @s 128 89 310
scoreboard players set @a castle 0
scoreboard players enable @a castle

execute as @a[scores={farm_world=1..}] run tp @s 12125 70 512
scoreboard players set @a farm_world 0
scoreboard players enable @a farm_world

#-24 68 1379 
execute as @a[scores={floating_islands=1..}] run tp @s -72 96 1386 90 0
scoreboard players set @a floating_islands 0
scoreboard players enable @a floating_islands

execute as @a[scores={hangar=1..}] run tp @s 315 5 1177 125 4
scoreboard players set @a hangar 0
scoreboard players enable @a hangar

advancement revoke @s only tp:loop