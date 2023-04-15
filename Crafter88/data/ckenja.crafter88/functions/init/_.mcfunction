#> ckenja.crafter88:init/_
#
#
#
# @within tag/function util:init

data modify storage ckenja.crafter88: picking.pos.min set value [0.0,0.0,0.0]
data modify storage ckenja.crafter88: picking.pos.max set value [0.0,0.0,0.0]

scoreboard objectives add ckenja.crafter88 dummy
scoreboard objectives add ckenja.crafter88.x dummy
scoreboard objectives add ckenja.crafter88.y dummy
scoreboard objectives add ckenja.crafter88.z dummy
scoreboard objectives add ckenja.crater88.sneak minecraft.custom:minecraft.sneak_time

scoreboard players set #-1 ckenja.crafter88 -1
scoreboard players set #5 ckenja.crafter88 5
scoreboard players set #attack_launch_modifier ckenja.crafter88 100
scoreboard players set #marker.boolean ckenja.crafter88 1
# https://docs.google.com/spreadsheets/d/19YGASXvsWEbUY63J0MDbhSLOn1mXylry0KWaC2qsZ0U/edit?usp=sharing
    scoreboard players set #player.launch.modifier.1 ckenja.crafter88 10785
    scoreboard players set #player.launch.modifier.2 ckenja.crafter88 6231
    scoreboard players set #player.launch.modifier.3 ckenja.crafter88 4980
    scoreboard players set #player.launch.modifier.4 ckenja.crafter88 4557
    scoreboard players set #player.launch.modifier.5 ckenja.crafter88 4466

gamerule naturalRegeneration false
gamerule keepInventory true
