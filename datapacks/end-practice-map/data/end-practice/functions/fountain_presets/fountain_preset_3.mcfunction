tp @p 25 42 -20 90 0
gamemode creative @p
tag @p add editor
replaceitem entity @p hotbar.0 obsidian
replaceitem entity @p hotbar.1 respawn_anchor
replaceitem entity @p hotbar.2 glowstone
replaceitem entity @p hotbar.3 cobblestone
replaceitem entity @p hotbar.4 cobblestone_slab
replaceitem entity @p hotbar.5 armor_stand{display: {Lore: ['[{"text":"Place this where","italic":false}]', '[{"text":"you want to spawn","italic":false}]'], Name: '[{"text":"Spawn","italic":"false"}]'}}
tellraw @p {"text":"Click to Save Preset","color":"#0061FF","bold":"true","clickEvent":{"action":"run_command","value":"/function end-practice:fountain_presets/fountain_preset_save"}}