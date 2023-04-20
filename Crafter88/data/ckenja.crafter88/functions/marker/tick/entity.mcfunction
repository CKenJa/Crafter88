#> ckenja.crafter88:marker/tick/entity
#
#
#
# @within function ckenja.crafter88:marker/tick/attack

effect give @s slow_falling 1 0 true

# 向き決めて
    execute store result score $tick.entity.launch.x ckenja.crafter88 run data get storage ckenja.crafter88: marker.tick.attackDirectionArray.x
    execute store result score $tick.entity.launch.y ckenja.crafter88 run data get storage ckenja.crafter88: marker.tick.attackDirectionArray.y
    execute store result score $tick.entity.launch.z ckenja.crafter88 run data get storage ckenja.crafter88: marker.tick.attackDirectionArray.z

# ブロックが生えてくる時間で1ブロック移動するようなMotionをかける
    execute if score $marker.tick.counter ckenja.crafter88 matches ..1 run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.1 ckenja.crafter88
    execute if score $marker.tick.counter ckenja.crafter88 matches 2 run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.2 ckenja.crafter88
    execute if score $marker.tick.counter ckenja.crafter88 matches 3 run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.3 ckenja.crafter88
    execute if score $marker.tick.counter ckenja.crafter88 matches 4 run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.4 ckenja.crafter88
    execute if score $marker.tick.counter ckenja.crafter88 matches 5.. run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.5 ckenja.crafter88
    scoreboard players operation $tick.entity.launch.x ckenja.crafter88 *= $tick.player.launch.goal ckenja.crafter88
    scoreboard players operation $tick.entity.launch.y ckenja.crafter88 *= $tick.player.launch.goal ckenja.crafter88
    scoreboard players operation $tick.entity.launch.z ckenja.crafter88 *= $tick.player.launch.goal ckenja.crafter88
    execute unless score $tick.entity.launch.x ckenja.crafter88 matches 0 store result entity @s Motion[0] double 0.0001 run scoreboard players get $tick.entity.launch.x ckenja.crafter88
    execute unless score $tick.entity.launch.y ckenja.crafter88 matches 0 store result entity @s Motion[1] double 0.0001 run scoreboard players get $tick.entity.launch.y ckenja.crafter88
    execute unless score $tick.entity.launch.z ckenja.crafter88 matches 0 store result entity @s Motion[2] double 0.0001 run scoreboard players get $tick.entity.launch.z ckenja.crafter88

# 吹っ飛ばしてリセット、攻撃処理
    scoreboard players operation $tick.player.launch.attack.player_id ckenja.crafter88 = $player_id ckenja.crafter88
    function ckenja.crafter88:tick/player/launch/attack
