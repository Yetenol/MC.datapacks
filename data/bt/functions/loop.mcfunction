# Display point A and B in different colors
team join bt_rope_a @e[tag=bt_rope_a,team=!bt_rope_a]
team join bt_rope_b @e[tag=bt_rope_b,team=!bt_rope_b]

# Show nearby knotes to players holding a spawn egg in their mainhand
execute at @s[nbt={SelectedItem:{id:"minecraft:bat_spawn_egg"}}] run effect give @e[type=bat,tag=bt_rope,distance=..10] minecraft:glowing 1 1 true
execute at @s[nbt={SelectedItem:{id:"minecraft:bat_spawn_egg"}}] run kill @e[type=item,distance=..10,nbt={Item:{id:"minecraft:lead"}}]

# Show nearby knotes to players holding a spawn egg in their offhand
execute at @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bat_spawn_egg"}]}] run effect give @e[type=bat,tag=bt_rope,distance=..10] minecraft:glowing 1 1 true
execute at @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bat_spawn_egg"}]}] run kill @e[type=item,distance=..10,nbt={Item:{id:"minecraft:lead"}}]

# Generate a new rope out of a Point A and a Point B
execute as @e[type=bat,tag=bt_rope_b,limit=1] at @s if entity @e[tag=bt_rope_a,distance=..30] run function bt:create_rope

# Remove knotes of broken leashes (50% reliability)
kill @e[type=bat,tag=bt_kill_if_unleashed,nbt=!{Leash:{}}]

advancement revoke @s only bt:loop

