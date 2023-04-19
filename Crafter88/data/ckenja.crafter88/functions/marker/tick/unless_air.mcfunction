#> ckenja.crafter88:marker/tick/unless_air
#
#
#
# @within
#   function ckenja.crafter88:marker/tick/check_pierce
#   function ckenja.crafter88:marker/tick/if_air
data modify storage ckenja.crafter88: marker.directionList set value []

# 0 0 0経由でcloneしてブロック持ってくる
    data modify storage anywhere: function set value "ckenja.crafter88:marker/clone"
    data modify storage anywhere: at set value {Pos:[0d,0d,0d],Dimension:"ckenja.structure_memory:void"}
    execute store result storage anywhere: at.Pos[0] double 1 run scoreboard players get @s ckenja.crafter88.x
    execute store result storage anywhere: at.Pos[1] double 1 run scoreboard players get @s ckenja.crafter88.y
    execute store result storage anywhere: at.Pos[2] double 1 run scoreboard players get @s ckenja.crafter88.z
    function #anywhere:run
    execute if data storage ckenja.crafter88: marker.clone{anywhere:"0"} run function ckenja.crafter88:marker/place/normal
    execute if data storage ckenja.crafter88: marker.clone{anywhere:"+X"} run function ckenja.crafter88:marker/place/x
    execute if data storage ckenja.crafter88: marker.clone{anywhere:"+Y"} run function ckenja.crafter88:marker/place/y
    execute if data storage ckenja.crafter88: marker.clone{anywhere:"+Z"} run function ckenja.crafter88:marker/place/z
    execute if data storage ckenja.crafter88: marker.clone{anywhere:"-X"} run function ckenja.crafter88:marker/place/-x
    execute if data storage ckenja.crafter88: marker.clone{anywhere:"-Y"} run function ckenja.crafter88:marker/place/-y
    execute if data storage ckenja.crafter88: marker.clone{anywhere:"-Z"} run function ckenja.crafter88:marker/place/-z

# 次tickのマーカーを召喚する。
# 自分がどの方向から出てきたか保存してると軽量化できる(結論: ブロック取ってきた方が軽い)
    scoreboard players operation $marker.x ckenja.crafter88 = @s ckenja.crafter88.x
    scoreboard players operation $marker.y ckenja.crafter88 = @s ckenja.crafter88.y
    scoreboard players operation $marker.z ckenja.crafter88 = @s ckenja.crafter88.z
    scoreboard players operation $player_id ckenja.crafter88 = @s ckenja.crafter88
    execute if data storage ckenja.crafter88: marker.directionList[{value:"+X"}] unless data storage ckenja.crafter88: marker.tick.data.ckenja.crafter88.marker{attackDirection:"+X"} positioned ~1 ~ ~ run function ckenja.crafter88:marker/init/x.pre
    execute if data storage ckenja.crafter88: marker.directionList[{value:"-X"}] unless data storage ckenja.crafter88: marker.tick.data.ckenja.crafter88.marker{attackDirection:"-X"} positioned ~-1 ~ ~ run function ckenja.crafter88:marker/init/-x.pre
    execute if data storage ckenja.crafter88: marker.directionList[{value:"+Y"}] unless data storage ckenja.crafter88: marker.tick.data.ckenja.crafter88.marker{attackDirection:"+Y"} positioned ~ ~1 ~ run function ckenja.crafter88:marker/init/y.pre
    execute if data storage ckenja.crafter88: marker.directionList[{value:"-Y"}] unless data storage ckenja.crafter88: marker.tick.data.ckenja.crafter88.marker{attackDirection:"-Y"} positioned ~ ~-1 ~ run function ckenja.crafter88:marker/init/-y.pre
    execute if data storage ckenja.crafter88: marker.directionList[{value:"+Z"}] unless data storage ckenja.crafter88: marker.tick.data.ckenja.crafter88.marker{attackDirection:"+Z"} positioned ~ ~ ~1 run function ckenja.crafter88:marker/init/z.pre
    execute if data storage ckenja.crafter88: marker.directionList[{value:"-Z"}] unless data storage ckenja.crafter88: marker.tick.data.ckenja.crafter88.marker{attackDirection:"-Z"} positioned ~ ~ ~-1 run function ckenja.crafter88:marker/init/-z.pre
