#> ckenja.crafter88:picker/register/check_chunk_loaded
#
#
#
# @within function ckenja.crafter88:anywhere_listener

execute store result score $picker.register.loaded.0 ckenja.crafter88 unless block ~ ~ ~ #ckenja.crafter88:empty
execute store result score $picker.register.loaded.47 ckenja.crafter88 unless block ~47 ~47 ~47 #ckenja.crafter88:empty

scoreboard players set $picker.message.loaded ckenja.crafter88 0
execute if score $picker.register.loaded.0 ckenja.crafter88 matches 1 if score $picker.register.loaded.47 ckenja.crafter88 matches 1 run function ckenja.crafter88:picker/register/_
