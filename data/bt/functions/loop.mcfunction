team join bt_rope_a @e[tag=bt_rope_a,team=!bt_rope_a]
team join bt_rope_b @e[tag=bt_rope_b,team=!bt_rope_b]

execute as @e[tag=bt_rope_b] at @s if entity @e[tag=bt_rope_a,distance=..20] run function bt:create_rope

advancement revoke @s only bt:loop