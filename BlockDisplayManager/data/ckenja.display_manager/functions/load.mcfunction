#> ckenja.display_manager:load
#
#
#
# @within tag/function minecraft:load

#>
#@public
    #declare objective ckenja.display_manager

#>
#@internal
    #declare objective ckenja.display_manager.owner
    #declare objective ckenja.display_manager.type
    scoreboard objectives add ckenja.display_manager.owner dummy
    scoreboard objectives add ckenja.display_manager.type dummy

scoreboard players reset $max_used_id ckenja.display_manager
function #ckenja.display_manager:load_id
data modify storage ckenja.display_manager:_ templateArray set value []
scoreboard players operation $load.loop ckenja.display_manager = $max_used_id ckenja.display_manager
function ckenja.display_manager:load.loop

data modify storage ckenja.display_manager:_ ownerList set value []
data modify storage ckenja.display_manager:_ updated set value [{}]
