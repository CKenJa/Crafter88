#> ckenja.crafter88:left_click/fake_break.loop
# 通り道を、ぶっ壊すループ
#
# @within function ckenja.crafter88:left_click/fake_break

#declare score_holder $left_click.fake_break

execute store success score $left_click.fake_break ckenja.crafter88 run execute if block ~ ~ ~ #ckenja.crafter88:air
execute if score $left_click.fake_break ckenja.crafter88 matches 0 run function ckenja.crafter88:left_click/fake_break.is_air
execute if score $left_click.fake_break ckenja.crafter88 matches 1 run function ckenja.crafter88:left_click/fake_break.loop2
