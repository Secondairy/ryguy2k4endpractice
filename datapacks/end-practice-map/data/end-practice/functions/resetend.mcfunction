execute if score mode Settings matches 1 in minecraft:the_end run tp @p[gamemode=survival] 90 49 1 90 0
execute if score mode Settings matches 2 in minecraft:the_end run tp @p[gamemode=survival] 90 49 -1 90 0
gamemode adventure @p
gamerule doMobSpawning false
kill @e[type=minecraft:enderman]
stopsound @a hostile minecraft:entity.enderman.death
title @p times 10 5 10

execute if score mode Settings matches 2 if score Health Dragon matches 0 if score s igt matches 0..9 run title @p title ["",{"color":"#FFFFFF","bold":true,"score":{"name":"m","objective":"igt"}},{"color":"#FFFFFF","bold":true,"text":":0"},{"color":"#FFFFFF","bold":true,"score":{"name":"s","objective":"igt"}}]
execute if score mode Settings matches 2 if score Health Dragon matches 0 if score s igt matches 10.. run title @p title ["",{"color":"#FFFFFF","bold":true,"score":{"name":"m","objective":"igt"}},{"color":"#FFFFFF","bold":true,"text":":"},{"color":"#FFFFFF","bold":true,"score":{"name":"s","objective":"igt"}}]

scoreboard players set mode Settings 0
scoreboard players set hasPerched Dragon 0
scoreboard players set prevPhase Dragon 0
scoreboard players reset deadtime Dragon
scoreboard players set dead Dragon 0
scoreboard players set @p death 0
scoreboard objectives setdisplay sidebar empty

kill @e[type=minecraft:ender_dragon]
kill @e[type=minecraft:end_crystal]
kill @e[type=minecraft:boat]

execute if score startnode Settings matches 0 run setblock 0 54 0 minecraft:redstone_block
execute if score startnode Settings matches 0 run setblock 0 54 0 minecraft:air
execute if score startnode Settings matches 0 run setblock 0 54 -1 minecraft:redstone_block
execute if score startnode Settings matches 0 run setblock 0 54 -1 minecraft:air
execute if score startnode Settings matches 1 run setblock 0 53 0 minecraft:redstone_block
execute if score startnode Settings matches 1 run setblock 0 53 0 minecraft:air
execute if score startnode Settings matches 1 run setblock 0 53 -1 minecraft:redstone_block
execute if score startnode Settings matches 1 run setblock 0 53 -1 minecraft:air
execute if score startnode Settings matches 2 if score randomNode Dragon matches 0 run setblock 0 54 0 minecraft:redstone_block
execute if score startnode Settings matches 2 if score randomNode Dragon matches 0 run setblock 0 54 0 minecraft:air
execute if score startnode Settings matches 2 if score randomNode Dragon matches 0 run setblock 0 54 -1 minecraft:redstone_block
execute if score startnode Settings matches 2 if score randomNode Dragon matches 0 run setblock 0 54 -1 minecraft:air
execute if score startnode Settings matches 2 if score randomNode Dragon matches 1 run setblock 0 53 0 minecraft:redstone_block
execute if score startnode Settings matches 2 if score randomNode Dragon matches 1 run setblock 0 53 0 minecraft:air
execute if score startnode Settings matches 2 if score randomNode Dragon matches 1 run setblock 0 53 -1 minecraft:redstone_block
execute if score startnode Settings matches 2 if score randomNode Dragon matches 1 run setblock 0 53 -1 minecraft:air

setblock -1 54 0 minecraft:redstone_block
setblock -1 54 0 minecraft:air
setblock -1 54 -1 minecraft:redstone_block
setblock -1 54 -1 minecraft:air

setblock 1 130 1 minecraft:redstone_block
setblock 1 130 1 minecraft:air
setblock -2 130 1 minecraft:redstone_block
setblock -2 130 1 minecraft:air
setblock -2 130 -2 minecraft:redstone_block
setblock -2 130 -2 minecraft:air
setblock 1 130 -2 minecraft:redstone_block
setblock 1 130 -2 minecraft:air

setblock 48 59 -24 minecraft:redstone_block
setblock 48 59 -24 minecraft:air
