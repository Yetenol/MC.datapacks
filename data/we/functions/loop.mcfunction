tag @s[nbt={SelectedItem:{id:"minecraft:bow"}] add we_bow
tag @e[type=spectral_arrow,nbt={inGround:1b}] add we_arrow

execute at @s[tag=we_bow,Inventory:[{Slot:-106b,id:"minecraft:blackstone",Count:1b}]}] run execute as @e[tag=we_arrow,distance=..40] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:blackstone replace minecraft:air
execute at @s[tag=we_bow,Inventory:[{Slot:-106b,id:"minecraft:blackstone",Count:2b}]}] run execute as @e[tag=we_arrow,distance=..40] at @s run fill ~ ~ ~ ~1 ~1 ~1 minecraft:blackstone replace minecraft:air
execute at @s[tag=we_bow,Inventory:[{Slot:-106b,id:"minecraft:blackstone",Count:3b}]}] run execute as @e[tag=we_arrow,distance=..40] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:blackstone replace minecraft:air
execute at @s[tag=we_bow,Inventory:[{Slot:-106b,id:"minecraft:blackstone",Count:4b}]}] run execute as @e[tag=we_arrow,distance=..40] at @s run fill ~-1 ~-1 ~-1 ~2 ~2 ~2 minecraft:blackstone replace minecraft:air
execute at @s[tag=we_bow,Inventory:[{Slot:-106b,id:"minecraft:blackstone",Count:5b}]}] run execute as @e[tag=we_arrow,distance=..40] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:blackstone replace minecraft:air

kill @e[type=!player,tag=we_arrow]
tag @s remove we_bow

advancement revoke @s only we:loop