#> ckenja.crafter88:tick/player/launch/attack
#
#
#
# @within function ckenja.crafter88:tick/player/launch/_

#scoreboard players operation $tick.player.launch.x ckenja.crafter88 *= #attack_launch_modifier ckenja.crafter88
#scoreboard players operation $tick.player.launch.y ckenja.crafter88 *= #attack_launch_modifier ckenja.crafter88
#scoreboard players operation $tick.player.launch.z ckenja.crafter88 *= #attack_launch_modifier ckenja.crafter88
execute if score $marker.tick.counter ckenja.crafter88 matches ..1 run damage @s 2 player_attack
execute if score $marker.tick.counter ckenja.crafter88 matches 2.. run damage @s 1 player_attack
#$strength
