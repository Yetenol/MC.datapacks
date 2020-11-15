# Check wether player is using WorldEdit Tools


execute as @s[team=we_debug] if entity @e[type=spectral_arrow,nbt={inGround:1b}] run scoreboard players set bow we_debug 1
execute as @s[team=we_debug] unless entity @e[type=spectral_arrow,nbt={inGround:1b}] run scoreboard players set arrow we_debug 1
execute as @s[team=we_debug] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] run scoreboard players set bow we_debug 1
execute as @s[team=we_debug] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] run scoreboard players set bow we_debug 0

execute at @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] if entity @e[type=spectral_arrow,distance=..40,nbt={inGround:1b}] run function we:arrow_brush
#execute at @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:snowball"}]}] run function we:snow_brush

advancement revoke @s only we:loop