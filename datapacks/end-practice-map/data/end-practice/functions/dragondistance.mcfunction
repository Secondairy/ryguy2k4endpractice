tag @e[type=ender_dragon,limit=2] add c
tag @e[type=ender_dragon,limit=1] remove c
execute as @e[tag=c] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["g"]}
scoreboard players add Xdist Dragon 0
execute as @e[tag=g] at @s positioned ~-640 ~ ~-880 store result score Xdist Dragon run locate endcity
scoreboard players set a Dragon 0
scoreboard players operation a Dragon = Xdist Dragon
scoreboard players operation a Dragon /= 10 Dragon
scoreboard players operation Xdist Dragon %= 10 Dragon
execute if score Phase Dragon matches 3 if score dragondistance Settings matches 1 run title @a actionbar ["",{"score":{"name":"a","objective":"Dragon"},"bold":"true"},{"text":".","bold":"true"},{"score":{"name":"Xdist","objective":"Dragon"},"bold":"true"}]
kill @e[type=area_effect_cloud,tag=g]