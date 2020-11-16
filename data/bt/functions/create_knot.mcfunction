tag @e[tag=bt_create_knot] remove bt_create_knot
tag @s add bt_create_knot
execute in minecraft:overworld as @e[type=leash_knot,sort=nearest,limit=1] at @s run execute in minecraft:overworld as @e[distance=..1] run tag @s remove bt_create_knot
execute in minecraft:the_end as @e[type=leash_knot,sort=nearest,limit=1] at @s run execute in minecraft:the_end as @e[distance=..1] run tag @s remove bt_create_knot
execute in minecraft:the_nether as @e[type=leash_knot,sort=nearest,limit=1] at @s run execute in minecraft:the_nether as @e[distance=..1] run tag @s remove bt_create_knot
execute if entity @s[tag=bt_create_knot] align xyz run summon minecraft:leash_knot ~ ~ ~ {Tags:[bt_knot]}
execute if entity @s[tag=bt_create_knot] run say New know!