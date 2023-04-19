#> ckenja.crafter88:tick/player/chunk_free
#
#
#
# @within function ckenja.crafter88:tick/player/precount

execute store result score $tmp.id ckenja.structure_memory run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.structure.id
function #ckenja.structure_memory:unload
execute as @e[type=marker,tag=ckenja.crafter88.marker] if score @s ckenja.crafter88 = $player_id ckenja.crafter88 run kill @s
