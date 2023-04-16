#> ckenja.crafter88:picker/item/tick
#
#
#
# @within function ckenja.crafter88:tick/player/_

tag @s add ckenja.crafter88.picker.item.origin
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=item,tag=!ckenja.crafter88.picker.item.processed,distance=..1,sort=nearest,limit=1] run function ckenja.crafter88:picker/item/check_item_owner
tag @s remove ckenja.crafter88.picker.item.origin

scoreboard players set $picker.change_mode ckenja.crafter88 0
execute if score $picker.message.cancel ckenja.crafter88 matches 1 run scoreboard players set $picker.change_mode ckenja.crafter88 1
execute if score $picker.message.size ckenja.crafter88 matches 0 run scoreboard players set $picker.change_mode ckenja.crafter88 1
execute if score $picker.message.start ckenja.crafter88 matches 0 run scoreboard players set $picker.change_mode ckenja.crafter88 1
execute if score $picker.message.success ckenja.crafter88 matches 1 run scoreboard players set $picker.change_mode ckenja.crafter88 1
execute if score $picker.change_mode ckenja.crafter88 matches 1 run function ckenja.crafter88:picker/item/change_mode

execute if score $picker.message.success ckenja.crafter88 matches 1 run tellraw @s {"text":"保存に成功しました"}

execute if score $picker.message.size ckenja.crafter88 matches 0 run tellraw @s {"text":"建築物の一辺の大きさは1ブロック以上48ブロック以内でなければいけません。"}
execute if score $picker.message.start ckenja.crafter88 matches 0 run tellraw @s {"text":"初めに置くブロックが範囲内にありません。"}
execute if score $picker.message.loaded ckenja.crafter88 matches 0 run function ckenja.crafter88:picker/register/not_loaded_message
execute if score $picker.message.unusable_item ckenja.crafter88 matches 1 run tellraw @s {"text":"そのアイテムは使えません"}
execute if score $picker.message.skill ckenja.crafter88 matches 1 run tellraw @s {"text":"スキルを上書きすることはできません"}

execute if score $picker.message.size ckenja.crafter88 matches 0 run scoreboard players set $picker.cancel ckenja.crafter88 1
execute if score $picker.message.start ckenja.crafter88 matches 0 run scoreboard players set $picker.cancel ckenja.crafter88 1
execute if score $picker.message.cancel ckenja.crafter88 matches 1 run tellraw @s {"text":"キャンセルしました"}

scoreboard players reset $picker.message.cancel ckenja.crafter88
scoreboard players reset $picker.message.size ckenja.crafter88
scoreboard players reset $picker.message.start ckenja.crafter88
scoreboard players reset $picker.message.success ckenja.crafter88
scoreboard players reset $picker.message.unusable_item ckenja.crafter88
scoreboard players reset $picker.message.skill ckenja.crafter88
