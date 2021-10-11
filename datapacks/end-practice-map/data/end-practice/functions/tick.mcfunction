execute if score mode Settings matches 0 run function end-practide:tick0
execute if score mode Settings matches 1 run function end-practide:tick1
execute if score mode Settings matches 2 run function end-practide:tick2

execute in minecraft:the_end positioned 92 49 0 if entity @p[distance=15..,gamemode=survival] if score mode Settings matches 0 run tp @p 92 49 0 90 0
execute in minecraft:the_end positioned 92 49 0 if entity @p[distance=15..,gamemode=adventure] if score mode Settings matches 0 run tp @p 92 49 0 90 0
execute if entity @p[gamemode=survival] if score mode Settings matches 0 run clear @p
execute if entity @p[gamemode=adventure] if score mode Settings matches 0 run clear @p
stopsound @a hostile minecraft:entity.ender_dragon.death
effect give @a minecraft:fire_resistance 5 0 true
effect give @a minecraft:saturation 5 0 true
execute if entity @p[gamemode=creative] if score mode Settings matches 0 unless entity @p[tag=editor] run title @p actionbar {"text":"Please set your gamemode to survival or adventure","color":"#FFFFFF","bold":"true"}
execute if entity @p[gamemode=spectator] if score mode Settings matches 0 unless entity @p[tag=editor] run title @p actionbar {"text":"Please set your gamemode to survival or adventure","color":"#FFFFFF","bold":"true"}
execute in minecraft:the_end positioned 92 49 0 if entity @p[distance=..20] run tag @p remove editor

bossbar set minecraft:dragon name {"text":"Ender Dragon","color":"white","italic":false}
bossbar set minecraft:dragon color pink
bossbar set minecraft:dragon max 200
bossbar set minecraft:dragon players @a

scoreboard players add t igt 1
scoreboard players add t2 igt 1
execute if score t igt matches 19.. run function end-practice:tsec
execute if score s igt matches 60.. run function end-practice:tmin

execute if score mode Settings matches 2 if score autoperch Settings matches 1 if score t2 igt matches 3600..3620 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:2}
execute if score mode Settings matches 2 if score autoperch Settings matches 2 if score t2 igt matches 2400..2420 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:2}
execute if score mode Settings matches 2 if score autoperch Settings matches 3 if score t2 igt matches 1800..1820 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:2}
execute if score mode Settings matches 2 if score autoperch Settings matches 4 if score t2 igt matches 1200..1220 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:2}
execute if score mode Settings matches 2 if score autoperch Settings matches 5 if score t2 igt matches 600..620 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:2}
execute if score mode Settings matches 2 if score autoperch Settings matches 6 if score t2 igt matches 300..320 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:2}

execute if score phasedisplay Settings matches 0 if score mode Settings matches 1..2 if score Phase Dragon matches 0..2 if score s igt matches 0..9 run title @p actionbar ["",{"color":"#14623B","bold":true,"score":{"name":"m","objective":"igt"}},{"color":"#14623B","bold":true,"text":":0"},{"color":"#14623B","bold":true,"score":{"name":"s","objective":"igt"}}]
execute if score phasedisplay Settings matches 0 if score mode Settings matches 1..2 if score Phase Dragon matches 0..2 if score s igt matches 10.. run title @p actionbar ["",{"color":"#14623B","bold":true,"score":{"name":"m","objective":"igt"}},{"color":"#14623B","bold":true,"text":":"},{"color":"#14623B","bold":true,"score":{"name":"s","objective":"igt"}}]
execute if score phasedisplay Settings matches 1 if score mode Settings matches 1..2 if score Phase Dragon matches 0 if score s igt matches 0..9 run title @p actionbar ["",{"color":"#14623B","bold":true,"score":{"name":"m","objective":"igt"}},{"color":"#14623B","bold":true,"text":":0"},{"color":"#14623B","bold":true,"score":{"name":"s","objective":"igt"}},{"text":" | ","color":"gray","underline":true},{"color":"#14623B","bold":true,"text":"Normal"}]
execute if score phasedisplay Settings matches 1 if score mode Settings matches 1..2 if score Phase Dragon matches 1 if score s igt matches 0..9 run title @p actionbar ["",{"color":"#14623B","bold":true,"score":{"name":"m","objective":"igt"}},{"color":"#14623B","bold":true,"text":":0"},{"color":"#14623B","bold":true,"score":{"name":"s","objective":"igt"}},{"text":" | ","color":"gray","underline":true},{"color":"#14623B","bold":true,"text":"Strafing"}]
execute if score phasedisplay Settings matches 1 if score mode Settings matches 1..2 if score Phase Dragon matches 2 if score s igt matches 0..9 run title @p actionbar ["",{"color":"#14623B","bold":true,"score":{"name":"m","objective":"igt"}},{"color":"#14623B","bold":true,"text":":0"},{"color":"#14623B","bold":true,"score":{"name":"s","objective":"igt"}},{"text":" | ","color":"gray","underline":true},{"color":"#14623B","bold":true,"text":"Perch Approach"}]
execute if score phasedisplay Settings matches 1 if score mode Settings matches 1..2 if score Phase Dragon matches 0 if score s igt matches 10.. run title @p actionbar ["",{"color":"#14623B","bold":true,"score":{"name":"m","objective":"igt"}},{"color":"#14623B","bold":true,"text":":"},{"color":"#14623B","bold":true,"score":{"name":"s","objective":"igt"}},{"text":" | ","color":"gray","underline":true},{"color":"#14623B","bold":true,"text":"Normal"}]
execute if score phasedisplay Settings matches 1 if score mode Settings matches 1..2 if score Phase Dragon matches 1 if score s igt matches 10.. run title @p actionbar ["",{"color":"#14623B","bold":true,"score":{"name":"m","objective":"igt"}},{"color":"#14623B","bold":true,"text":":"},{"color":"#14623B","bold":true,"score":{"name":"s","objective":"igt"}},{"text":" | ","color":"gray","underline":true},{"color":"#14623B","bold":true,"text":"Strafing"}]
execute if score phasedisplay Settings matches 1 if score mode Settings matches 1..2 if score Phase Dragon matches 2 if score s igt matches 10.. run title @p actionbar ["",{"color":"#14623B","bold":true,"score":{"name":"m","objective":"igt"}},{"color":"#14623B","bold":true,"text":":"},{"color":"#14623B","bold":true,"score":{"name":"s","objective":"igt"}},{"text":" | ","color":"gray","underline":true},{"color":"#14623B","bold":true,"text":"Perch Approach"}]

execute in minecraft:the_end if score mode Settings matches 1..2 if block 1 63 0 minecraft:air run setblock 1 63 0 minecraft:crimson_wall_sign[facing=east]
execute in minecraft:the_end if score mode Settings matches 1..2 if block -1 63 0 minecraft:air run setblock -1 63 0 minecraft:crimson_wall_sign[facing=west]
execute in minecraft:the_end if score mode Settings matches 1..2 if block 0 63 1 minecraft:air run setblock 0 63 1 minecraft:crimson_wall_sign[facing=south]
execute in minecraft:the_end if score mode Settings matches 1..2 if block 0 63 -1 minecraft:air run setblock 0 63 -1 minecraft:crimson_wall_sign[facing=north]
execute in minecraft:the_end if score mode Settings matches 1..2 if block 1 63 0 minecraft:crimson_wall_sign run data merge block 1 63 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:resetend"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"#FFFFFF"}',Text3:'{"text":"RESET","bold":true,"color":"#FFFFFF"}'}
execute in minecraft:the_end if score mode Settings matches 1..2 if block -1 63 0 minecraft:crimson_wall_sign run data merge block -1 63 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:resetend"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"#FFFFFF"}',Text3:'{"text":"RESET","bold":true,"color":"#FFFFFF"}'}
execute in minecraft:the_end if score mode Settings matches 1..2 if block 0 63 -1 minecraft:crimson_wall_sign run data merge block 0 63 -1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:resetend"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"#FFFFFF"}',Text3:'{"text":"RESET","bold":true,"color":"#FFFFFF"}'}
execute in minecraft:the_end if score mode Settings matches 1..2 if block 0 63 1 minecraft:crimson_wall_sign run data merge block 0 63 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:resetend"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"#FFFFFF"}',Text3:'{"text":"RESET","bold":true,"color":"#FFFFFF"}'}

scoreboard players set prevHealth Dragon 0
scoreboard players operation prevHealth Dragon = Health Dragon
scoreboard players operation Health EnderDragon = Health Dragon
execute store result score Health Dragon run data get entity @e[type=minecraft:ender_dragon,limit=1] Health 1
execute if score Health Dragon < prevHealth Dragon unless score prevPhase Dragon < Phase Dragon unless score @p death matches 1.. run function end-practice:printdmg
execute store result bossbar minecraft:dragon value run scoreboard players get Health Dragon
execute if score Health Dragon matches 0 unless score dead Dragon matches 1 run scoreboard players operation deadtime Dragon = t2 igt
execute if score Health Dragon matches 0 unless score dead Dragon matches 1 run scoreboard players operation deadtime Dragon += 20 Dragon
execute if score Health Dragon matches 0 if score mode Settings matches 1.. run scoreboard players set dead Dragon 1

execute if score @p forceperch matches 1.. run data merge entity @e[type=ender_dragon,limit=1] {DragonPhase:2}
execute if score @p forceperch matches 1.. run scoreboard players set @a forceperch 0

execute unless score t2 igt < deadtime Dragon run scoreboard players operation prevPhase Dragon = Phase Dragon
execute store result score Phase Dragon run data get entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase
execute if score Phase Dragon < prevPhase Dragon run execute if score Phase Dragon matches 2 if score phasedisplay Settings matches 1 run title @p title {"text":"Dragon is Perching"}
execute if score Phase Dragon > prevPhase Dragon run execute if score Phase Dragon matches 2 if score phasedisplay Settings matches 1 run title @p title {"text":"Dragon is Perching"}
execute if score Phase Dragon < prevPhase Dragon run execute if score Phase Dragon matches 2 run scoreboard players set hasPerched Dragon 1
execute if score Phase Dragon > prevPhase Dragon run execute if score Phase Dragon matches 2 run scoreboard players set hasPerched Dragon 1

execute if score dragondistance Settings matches 1 if score Phase Dragon matches 3 run function end-practice:dragondistance
execute if score mode Settings matches 0 run function end-practice:signs

execute if score mode Settings matches 0..1 run kill @e[type=ender_dragon,nbt={DragonPhase:0}]
execute if score mode Settings matches 0..1 run kill @e[type=ender_dragon,nbt={DragonPhase:1}]
execute if score mode Settings matches 0 run kill @e[type=ender_dragon,nbt={DragonPhase:2}]
execute if score mode Settings matches 0 run kill @e[type=ender_dragon,nbt={DragonPhase:3}]
execute if score mode Settings matches 0..1 run kill @e[type=ender_dragon,nbt={DragonPhase:4}]
execute if score mode Settings matches 0..1 run kill @e[type=ender_dragon,nbt={DragonPhase:5}]
execute if score mode Settings matches 0..1 run kill @e[type=ender_dragon,nbt={DragonPhase:6}]
execute if score mode Settings matches 0..1 run kill @e[type=ender_dragon,nbt={DragonPhase:7}]
execute if score instantreset Settings matches 1 run kill @e[type=ender_dragon,nbt={DragonPhase:4}]
execute if score instantreset Settings matches 1 run kill @e[type=ender_dragon,nbt={DragonPhase:5}]
execute if score instantreset Settings matches 1 run kill @e[type=ender_dragon,nbt={DragonPhase:6}]
execute if score instantreset Settings matches 1 run kill @e[type=ender_dragon,nbt={DragonPhase:7}]
execute if score mode Settings matches 0..2 run kill @e[type=ender_dragon,nbt={DragonPhase:8}]
execute if score mode Settings matches 0..1 run kill @e[type=ender_dragon,nbt={DragonPhase:9}]
execute if score mode Settings matches 0..1 run kill @e[type=ender_dragon,nbt={DragonPhase:10}]
execute if score mode Settings matches 1 if score hasPerched Dragon matches 1 run kill @e[type=ender_dragon,nbt={DragonPhase:0}]
execute if score @p death matches 1.. run kill @e[type=ender_dragon]

execute if score dead Dragon matches 1 if score t2 igt > deadtime Dragon run function end-practice:resetend
