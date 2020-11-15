tag @e[tag=bt_connect_to] remove bt_connect_to
tag @e[type=bat,tag=bt_rope_a,sort=nearest,limit=1] add bt_connect_to

data modify entity @s Leash set from entity @e[tag=bt_connect_to,limit=1] {}
summon minecraft:leash_knot ~ ~ ~ {Tags:[bt_knot]}
execute at @e[tag=bt_connect_to] run summon minecraft:leash_knot ~ ~ ~ {Tags:[bt_knot]}

data modify entity @s Glowing set value 0
tag @s remove bt_rope_b
tag @s add bt_rope

data modify entity @e[tag=bt_connect_to,limit=1] Glowing set value 0
tag @e[tag=bt_connect_to] remove bt_rope_a
tag @e[tag=bt_connect_to] add bt_rope

tag @e[tag=bt_connect_to] remove bt_connect_to