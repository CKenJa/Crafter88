#> ckenja.looking_at_function:run2
#
#
#
# @within function ckenja.looking_at_function:run

data modify storage ckenja.looking_at_function:_ player_stats set value 0
execute anchored eyes positioned ^ ^ ^ if entity @s[distance=..1.28] run data modify storage ckenja.looking_at_function:_ player_stats set value 1
execute anchored eyes positioned ^ ^ ^ if entity @s[distance=..0.41] run data modify storage ckenja.looking_at_function:_ player_stats set value 2
data modify storage util: in set value 9
tag @s add ckenja.looking_at_function.right_click
# https://www.reddit.com/r/Minecraft/comments/wwwrp3/some_high_precision_stats_on_the_minecraft_player/
    execute if data storage ckenja.looking_at_function:_ {player_stats:0} positioned ~ ~1.62 ~ summon marker run function ckenja.looking_at_function:marker
    execute if data storage ckenja.looking_at_function:_ {player_stats:1} positioned ~ ~1.27 ~ summon marker run function ckenja.looking_at_function:marker
    execute if data storage ckenja.looking_at_function:_ {player_stats:2} positioned ~ ~0.4 ~ summon marker run function ckenja.looking_at_function:marker
tag @s remove ckenja.looking_at_function.right_click
