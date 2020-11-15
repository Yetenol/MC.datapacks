# Check wether player is using WorldEdit Tools


execute as @s[team=we_debug] if entity @e[type=spectral_arrow,nbt={inGround:1b}] run scoreboard players set bow we_debug 1
execute as @s[team=we_debug] unless entity @e[type=spectral_arrow,nbt={inGround:1b}] run scoreboard players set arrow we_debug 1
execute as @s[team=we_debug] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] run scoreboard players set bow we_debug 1
execute as @s[team=we_debug] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] run scoreboard players set bow we_debug 0
execute as @s[team=we_debug] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:snow"}]}] run scoreboard players set snow we_debug 1
execute as @s[team=we_debug] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:snow"}]}] run scoreboard players set bow we_debug 0
execute as @s[team=we_debug] run execute as @e[type=spectral_arrow,tag=we_arrow,nbt={inGround:1b}] run scoreboard players set @s we_debug 2

execute as @e[type=minecraft:snowball,tag=!we_ignore] unless entity @p[distance=..2] run tag @s add we_ignore
execute at @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:snowball"}]}] run execute as @e[type=minecraft:snowball,distance=..2,tag=!we_ignore] at @s run function we:create_arrow
execute at @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:snowball"}]}] run execute as @e[type=spectral_arrow,tag=we_arrow,distance=..40,nbt={inGround:1b}] at @s run function we:arrow_brush

#execute at @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] kill @e[type=minecraft:snowball,distance=..1,sort=nearest,limit=1]
#execute at @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] if entity @e[type=spectral_arrow,distance=..40,nbt={inGround:1b}] run function we:arrow_brush
#execute at @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] if entity @e[type=spectral_arrow,distance=..40,nbt={inGround:1b}] run function we:arrow_brush

#execute as @e[type=arrow,tag=we_create] run data modify entity @s Motion set from entity @e[type=snowball,sort=nearest,limit=1] Motion
#execute at @e[type=snowball] run summon minecraft:arrow ~ ~ ~ {Tags:["we_create"]}



advancement revoke @s only we:loop