#> ckenja.crafter88:tick/player/launch/attack
#
#
#
# @within function ckenja.crafter88:tick/player/launch/_

scoreboard players operation $tick.player.launch.x ckenja.crafter88 *= #attack_launch_modifier ckenja.crafter88
scoreboard players operation $tick.player.launch.y ckenja.crafter88 *= #attack_launch_modifier ckenja.crafter88
scoreboard players operation $tick.player.launch.z ckenja.crafter88 *= #attack_launch_modifier ckenja.crafter88
damage @s 1 player_attack
