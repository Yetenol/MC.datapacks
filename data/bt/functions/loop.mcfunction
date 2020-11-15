execute as @e[type=bat,tag=bt_knot] run summon minecraft:item_frame ~ ~ ~ {Invisible:1b,Tags:[bt_knot]}
execute as @e[type=item_frame,tag=bt_knot] at @s run tp @e[type=bat,tag=bt_knot,distance=..2] @s
kill @e[type=item_frame,tag=bt_knot]