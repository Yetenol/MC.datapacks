# Check wether player is using WorldEdit Tools

tag @e[type=spectral_arrow,nbt={inGround:1b}] add we_arrow

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] run scoreboard players set bow we_debug 1
execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] run scoreboard players set bow we_debug 0


#execute at @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] run function we:arrow_brush if @e[we_arrow,distance=..40]
#execute at @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:snowball"}]}] run function we:snow_brush

execute as @e[type=snowball] run say Snow

kill @e[type=!player,tag=we_arrow]

advancement revoke @s only we:loop