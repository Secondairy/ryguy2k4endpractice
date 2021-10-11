execute if score startnode Settings matches 2 in minecraft:the_end run summon minecraft:area_effect_cloud 0 70 0 {Tags:["r"]}
execute if score startnode Settings matches 2 in minecraft:the_end run summon minecraft:area_effect_cloud 1 70 0 {Tags:["r"]}
execute if score startnode Settings matches 2 store result score randomNode Dragon run data get entity @e[tag=r,limit=1,sort=random] Pos[0]
execute if score startnode Settings matches 2 run kill @e[tag=r]

function end-practice:resetend
gamemode survival @p
gamerule doMobSpawning true

scoreboard players set mode Settings 2
scoreboard players set m igt 0
scoreboard players set s igt 0
scoreboard players set t igt 0
scoreboard players set t2 igt 0

execute if score spawn Settings matches 0 run tp @p 90 59 0
execute if score spawn Settings matches 1 run tp @p 8 63 0

execute if score perchloadout Settings matches 0 run function end-practice:loadouts/perch_loadout_1
execute if score perchloadout Settings matches 1 run function end-practice:loadouts/perch_loadout_2
execute if score perchloadout Settings matches 2 run function end-practice:loadouts/perch_loadout_3
execute at @p if score perchloadout Settings matches 3 run clone 32 42 1 32 42 1 ~ ~ ~
execute at @p if score perchloadout Settings matches 4 run clone 32 42 0 32 42 0 ~ ~ ~
execute at @p if score perchloadout Settings matches 5 run clone 32 42 -1 32 42 -1 ~ ~ ~
execute at @p if score perchloadout Settings matches 3..5 run setblock ~ ~ ~ air destroy

execute if score healthdisplay Settings matches 0 run scoreboard objectives setdisplay sidebar empty
execute if score healthdisplay Settings matches 1 run scoreboard objectives setdisplay sidebar EnderDragon

summon minecraft:ender_dragon 0 128 0 {DragonPhase:0}