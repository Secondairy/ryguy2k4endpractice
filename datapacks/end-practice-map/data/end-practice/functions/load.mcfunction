scoreboard objectives remove igt
scoreboard objectives remove forceperch
bossbar remove minecraft:dragon

scoreboard objectives add forceperch minecraft.used:minecraft.potion
scoreboard objectives add igt dummy
scoreboard players set m igt 0
scoreboard players set s igt 0
scoreboard players set t igt 0
scoreboard players set t2 igt 0
scoreboard players set 10 Dragon 10
scoreboard players set 20 Dragon 20
bossbar add minecraft:dragon {"text":"Ender Dragon","color":"white","italic":false}