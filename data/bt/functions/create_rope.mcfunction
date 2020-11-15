data modify entity @s Leash set from entity @e[tag=bt_rope_a,sort=nearest,limit=1] {}
summon minecraft:leash_knot ~ ~ ~ {Tags:[bt_knot]}
execute at @e[tag=bt_rope_a,sort=nearest,limit=1] run summon minecraft:leash_knot ~ ~ ~ {Tags:[bt_knot]}

data modify entity @s Glowing set value 0
tag @s add bt_rope
tag @s remove bt_rope_b

data modify entity @e[tag=bt_rope_a,sort=nearest,limit=1] Glowing set value 0
tag @e[tag=bt_rope_a,sort=nearest,limit=1] add bt_rope
tag @e[tag=bt_rope_a,sort=nearest,limit=1] remove bt_rope_a