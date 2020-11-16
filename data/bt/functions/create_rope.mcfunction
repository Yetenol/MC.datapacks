tag @e[tag=bt_connect_to] remove bt_connect_to
tag @e[type=bat,tag=bt_rope_a,sort=nearest,limit=1] add bt_connect_to

data modify entity @s Leash set from entity @e[tag=bt_connect_to,limit=1] {}
#data modify entity @e[tag=bt_connect_to,limit=1] Leash set from entity @s {}

function bt:create_knot
execute as @e[tag=bt_connect_to] at @s run function bt:create_knot

data modify entity @s Glowing set value 0
tag @s remove bt_rope_b
tag @s add bt_rope
tag @s add bt_kill_if_unleashed
team join bt_rope @s

data modify entity @e[tag=bt_connect_to,limit=1] Glowing set value 0
tag @e[tag=bt_connect_to] remove bt_rope_a
tag @e[tag=bt_connect_to] add bt_rope
team join bt_rope @e[tag=bt_connect_to]

tag @e[tag=bt_connect_to] remove bt_connect_to