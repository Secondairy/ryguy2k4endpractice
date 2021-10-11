function end-practice:resetend
function end-practice:fountain_presets/fountain_preset_save
scoreboard players set mode Settings 1
gamemode survival @p
execute if score dmgmsg Settings matches 1 run tellraw @p {"text":"--------","color":"gold"}
execute if score dmgmsg Settings matches 2 run tellraw @p {"text":"--------","color":"dark_gray"}

execute if score fountain Settings matches 0 in minecraft:the_end run setblock -8 42 3 minecraft:redstone_block
execute if score fountain Settings matches 0 in minecraft:the_end run setblock -8 42 3 minecraft:air
execute if score fountain Settings matches 1 in minecraft:the_end run setblock -8 42 1 minecraft:redstone_block
execute if score fountain Settings matches 1 in minecraft:the_end run setblock -8 42 1 minecraft:air
execute if score fountain Settings matches 2 in minecraft:the_end run setblock -8 42 -1 minecraft:redstone_block
execute if score fountain Settings matches 2 in minecraft:the_end run setblock -8 42 -1 minecraft:air

execute in minecraft:the_end positioned 0 65 0 run tag @e[type=armor_stand,distance=0..10,limit=1] add spawn
execute if entity @e[tag=spawn] at @e[tag=spawn] run tp @p ~ ~ ~
execute unless entity @e[tag=spawn] run tp @p 0 62 1
kill @e[tag=spawn]

execute if score healthdisplay Settings matches 0 run scoreboard objectives setdisplay sidebar empty
execute if score healthdisplay Settings matches 1 run scoreboard objectives setdisplay sidebar EnderDragon

execute if score cycleloadout Settings matches 0 run function end-practice:loadouts/one_cycle_loadout
execute if score cycleloadout Settings matches 1 run give @p minecraft:white_bed 4
execute if score cycleloadout Settings matches 2 run give @p minecraft:white_bed 5
execute if score cycleloadout Settings matches 3 run give @p minecraft:white_bed 6
execute if score cycleloadout Settings matches 4 run give @p minecraft:white_bed 7
execute if score cycleloadout Settings matches 5 run give @p minecraft:white_bed 8
execute if score cycleloadout Settings matches 6 run give @p minecraft:white_bed 9

function end-practice:randompos
execute at @e[tag=dragonSpawn,limit=1,sort=random] run summon ender_dragon ~ ~ ~ {DragonPhase:3}

kill @e[tag=dragonSpawn]
kill @e[tag=dragonSpawn]
kill @e[tag=dragonSpawn]