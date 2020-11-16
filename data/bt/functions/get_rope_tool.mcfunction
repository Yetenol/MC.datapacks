clear @s minecraft:bat_spawn_egg{Tags:[bt_eggs]}

give @p bat_spawn_egg{Tags:[bt_eggs],display:{Name:'[{"text":"Rope point A","italic":false,"color":"green"}]'},EntityTag:{Tags:[bt_rope_a],DeathLootTable:"invalid",ActiveEffects:[{Id:14b,Duration:999999,ShowParticles:0b}],BatFlags:1,CustomName:'[{"text":"Rope start","color":"green"}]',Health:1,Glowing:1,Invulnerable:1,NoAI:1,NoGravity:1,PersistenceRequired:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:1F}]}}

give @p bat_spawn_egg{Tags:[bt_eggs],display:{Name:'[{"text":"Rope point B","italic":false,"color":"gold"}]'},EntityTag:{Tags:[bt_rope_b],DeathLootTable:"invalid",ActiveEffects:[{Id:14b,Duration:999999,ShowParticles:0b}],BatFlags:1,CustomName:'[{"text":"Rope end","color":"gold"}]',Health:1,Glowing:1,Invulnerable:1,NoAI:1,NoGravity:1,PersistenceRequired:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:1F}]}}

advancement revoke @s only bt:get_rope_tool