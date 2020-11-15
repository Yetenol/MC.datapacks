data modify entity @s Leash set from entity @e[tag=bt_rope_start,sort=nearest,limit=1] {}
execute as @s[tag=bt_knot] run summon minecraft:leash_knot ~ ~ ~
execute as @e[tag=bt_rope_start,sort=nearest,limit=1] at @s if entity @s[tag=bt_knot] run summon minecraft:leash_knot ~ ~ ~

data modify entity @s Glowing set value 0
tag @s add bt_rope_done
tag @s remove bt_rope_end

data modify entity @e[tag=bt_rope_start,sort=nearest,limit=1] Glowing set value 0
tag @e[tag=bt_rope_start,sort=nearest,limit=1] add bt_rope_done
tag @e[tag=bt_rope_start,sort=nearest,limit=1] remove bt_rope_start