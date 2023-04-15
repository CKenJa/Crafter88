#> ckenja.crafter88:left_click/_
#
#
#
# @within advancement ckenja.crafter88:left_click

#declare score_holder $left_click.fake_attack
#declare tag ckenja.crafter88.left_click

advancement revoke @s only ckenja.crafter88:left_click
# 偽の攻撃処理
# https://wiki3.jp/minecraft_technology/page/11
    #tag @s add ckenja.crafter88.left_click
    #execute store success score $left_click.fake_attack ckenja.crafter88 run execute anchored eyes positioned ^ ^ ^6.1 as @e[tag=!ckenja.crafter88.left_click,distance=..6] positioned as @s positioned ^ ^ ^1000 facing entity @a[tag=ckenja.crafter88.left_click,limit=1] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run damage @s 2 minecraft:player_attack by @a[tag=ckenja.crafter88.left_click,distance=..6,limit=1]
    #tag @s remove ckenja.crafter88.left_click

#execute if score $left_click.fake_attack ckenja.crafter88 matches 0 anchored eyes positioned ~ ~ ~ run function ckenja.crafter88:left_click/fake_break

data modify storage ckenja.looking_at_function: function set value "ckenja.crafter88:left_click/sneak"
data modify storage ckenja.looking_at_function: as_entity set value true
function ckenja.looking_at_function:run
