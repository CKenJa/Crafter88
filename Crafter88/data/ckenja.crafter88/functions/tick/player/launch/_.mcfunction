#> ckenja.crafter88:tick/player/launch/_
#
#
#
# @within function ckenja.crafter88:tick/player/_

#>
# @private
#declare score_holder $tick.player.launch.goal
#declare score_holder $tick.player.launch.motion.x
#declare score_holder $tick.player.launch.motion.y
#declare score_holder $tick.player.launch.motion.z
#declare score_holder $tick.player.launch.keep.x
#declare score_holder $tick.player.launch.keep.y
#declare score_holder $tick.player.launch.keep.z

# 移動速度を0にしないとMotion関係なく動くだろお前
    attribute @s generic.movement_speed modifier add c145c31f-0f69-4e87-a826-0227fe45323c "stan" -1 add
    effect give @s slow_falling 1 0 true

# 向き決めて
    scoreboard players reset $x delta.api.launch
    scoreboard players reset $y delta.api.launch
    scoreboard players reset $z delta.api.launch
    function ckenja.crafter88:tick/player/launch/loop

# 1以上を切り捨てて
    execute if score $x delta.api.launch matches 1.. run scoreboard players set $x delta.api.launch 1
    execute if score $x delta.api.launch matches ..-1 run scoreboard players set $x delta.api.launch -1
    execute if score $y delta.api.launch matches 1.. run scoreboard players set $y delta.api.launch 1
    execute if score $y delta.api.launch matches ..-1 run scoreboard players set $y delta.api.launch -1
    execute if score $z delta.api.launch matches 1.. run scoreboard players set $z delta.api.launch 1
    execute if score $z delta.api.launch matches ..-1 run scoreboard players set $z delta.api.launch -1

# ブロックが生えてくる時間で1ブロック移動するようなMotionをかける
    execute if score $marker.tick.counter ckenja.crafter88 matches ..1 run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.1 ckenja.crafter88
    execute if score $marker.tick.counter ckenja.crafter88 matches 2 run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.2 ckenja.crafter88
    execute if score $marker.tick.counter ckenja.crafter88 matches 3 run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.3 ckenja.crafter88
    execute if score $marker.tick.counter ckenja.crafter88 matches 4 run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.4 ckenja.crafter88
    execute if score $marker.tick.counter ckenja.crafter88 matches 5.. run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.5 ckenja.crafter88
    scoreboard players operation $x delta.api.launch *= $tick.player.launch.goal ckenja.crafter88
    scoreboard players operation $y delta.api.launch *= $tick.player.launch.goal ckenja.crafter88
    scoreboard players operation $z delta.api.launch *= $tick.player.launch.goal ckenja.crafter88

# 今持ってるMotionを打ち消す
    data modify storage ckenja.crafter88: tick.player.launch.Motion set from entity @s Motion
    execute store result score $tick.player.launch.motion.x ckenja.crafter88 run data get storage ckenja.crafter88: tick.player.launch.Motion[0] 10000
    execute store result score $tick.player.launch.motion.y ckenja.crafter88 run data get storage ckenja.crafter88: tick.player.launch.Motion[1] 10000
    execute store result score $tick.player.launch.motion.z ckenja.crafter88 run data get storage ckenja.crafter88: tick.player.launch.Motion[2] 10000
    # ただし、打ち消そうとして反対向きの力をかけるのは解釈違いなので消す
        scoreboard players operation $tick.player.launch.keep.x ckenja.crafter88 = $x delta.api.launch
        scoreboard players operation $tick.player.launch.keep.y ckenja.crafter88 = $y delta.api.launch
        scoreboard players operation $tick.player.launch.keep.z ckenja.crafter88 = $z delta.api.launch
        scoreboard players operation $x delta.api.launch -= $tick.player.launch.motion.x ckenja.crafter88
        scoreboard players operation $y delta.api.launch -= $tick.player.launch.motion.y ckenja.crafter88
        scoreboard players operation $z delta.api.launch -= $tick.player.launch.motion.z ckenja.crafter88
        scoreboard players operation $tick.player.launch.keep.x ckenja.crafter88 *= $x delta.api.launch
        scoreboard players operation $tick.player.launch.keep.y ckenja.crafter88 *= $y delta.api.launch
        scoreboard players operation $tick.player.launch.keep.z ckenja.crafter88 *= $z delta.api.launch
        execute if score $tick.player.launch.keep.x ckenja.crafter88 matches ..-1 run scoreboard players reset $x delta.api.launch
        execute if score $tick.player.launch.keep.y ckenja.crafter88 matches ..-1 run scoreboard players reset $y delta.api.launch
        execute if score $tick.player.launch.keep.z ckenja.crafter88 matches ..-1 run scoreboard players reset $z delta.api.launch
    #tellraw @a {"score":{"name":"$x","objective":"delta.api.launch"}}
    #tellraw @a {"score":{"name":"$y","objective":"delta.api.launch"}}
    #tellraw @a {"score":{"name":"$z","objective":"delta.api.launch"}}

# 吹っ飛ばしてリセット、攻撃処理
    execute positioned as @s run function delta:api/launch_xyz
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.attackArray.isAttack run function ckenja.crafter88:tick/player/launch/attack
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.attackArray
