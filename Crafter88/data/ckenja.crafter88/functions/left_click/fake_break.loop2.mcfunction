#> ckenja.crafter88:left_click/fake_break.loop2
#
#
#
# @within function ckenja.crafter88:left_click/fake_break.loop

data modify storage ckenja.crafter88: left_click.player.fake_break set from storage util: out[-1]
data remove storage util: out[-1]
execute if data storage util: out[-1] if data storage ckenja.crafter88: left_click.player{fake_break:"+X"} positioned ~1 ~ ~ run function ckenja.crafter88:left_click/fake_break.loop
execute if data storage util: out[-1] if data storage ckenja.crafter88: left_click.player{fake_break:"-X"} positioned ~-1 ~ ~ run function ckenja.crafter88:left_click/fake_break.loop
execute if data storage util: out[-1] if data storage ckenja.crafter88: left_click.player{fake_break:"+Y"} positioned ~ ~1 ~ run function ckenja.crafter88:left_click/fake_break.loop
execute if data storage util: out[-1] if data storage ckenja.crafter88: left_click.player{fake_break:"-Y"} positioned ~ ~-1 ~ run function ckenja.crafter88:left_click/fake_break.loop
execute if data storage util: out[-1] if data storage ckenja.crafter88: left_click.player{fake_break:"+Z"} positioned ~ ~ ~1 run function ckenja.crafter88:left_click/fake_break.loop
execute if data storage util: out[-1] if data storage ckenja.crafter88: left_click.player{fake_break:"-Z"} positioned ~ ~ ~-1 run function ckenja.crafter88:left_click/fake_break.loop
