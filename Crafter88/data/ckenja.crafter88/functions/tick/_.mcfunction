#> ckenja.crafter88:tick/_
#
#tick as server
#
# @within minecraft:tick

#>
#@private
#declare score_holder $tick.unequalTime

execute store result storage ckenja.crafter88: tick.time int 1 run time query gametime
data modify storage ckenja.crafter88: tick.picked set value false

# 前提: 召喚時にプレイヤーごとにカウンターが設定。召喚スタートは0の時にしか行えない。
# 召喚したエンティティがセレクタに引っかからないように時間一致を調べる。gametimeは太陽が止まってもちゃんと動く
# カウンタを実行者に、オーナーのカウンタが1のmarkerに処理を実行。0じゃないのは召喚スタート時の即設置への対応が面倒だったから
    execute as @e[type=marker,tag=ckenja.crafter88.marker] at @s run function ckenja.crafter88:marker/tick/check_time

# 各プレイヤーのカウンタを減らす。advancementに対応するためにmarker処理の前じゃないといけないけど面倒なのでまとめてやっちゃう
# 置いた後に吹っ飛ぶ
    scoreboard players add #tick.player.slow_falling.timer ckenja.crafter88 1
    execute as @a at @s run function ckenja.crafter88:tick/player/_
    execute if score #tick.player.slow_falling.timer ckenja.crafter88 matches 4.. run scoreboard players reset #tick.player.slow_falling.timer ckenja.crafter88
# 今tickに召喚されてないinteractionを消す。2個存在してもいいから常に存在させるように
    #execute as @e[type=interaction,tag=ckenja.crafter88.interaction] run function ckenja.crafter88:tick/interaction/_
