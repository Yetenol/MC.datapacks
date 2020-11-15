execute as @e[tag=bt_rope_end] at @s if entity @e[tag=bt_rope_start,distance=..20] run function bt:create_rope

advancement revoke @s only bt:loop
