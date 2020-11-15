team join bt_rope_a @e[tag=bt_rope_a,team=!bt_rope_a]
team join bt_rope_b @e[tag=bt_rope_b,team=!bt_rope_b]

execute as @e[tag=bt_rope_b,limit=1] at @s if entity @e[tag=bt_rope_a,distance=..20] run function bt:create_rope

kill @e[type=bat,tag=bt_rope,nbt=!{Leash:{}}]

advancement revoke @s only bt:loop