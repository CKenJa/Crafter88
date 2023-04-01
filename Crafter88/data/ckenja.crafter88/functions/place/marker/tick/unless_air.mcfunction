#> ckenja.crafter88:place/marker/tick/unless_air
#
#
#
# @within function ckenja.crafter88:place/marker/tick/count0

data modify storage ckenja.crafter88: place.marker.directionList set value []

# 0 20 0からcloneしてブロック持ってくる
    data modify storage anywhere: function set value "ckenja.crafter88:place/marker/clone"
    data modify storage anywhere: at set value {Pos:[0d,0d,0d],Dimension:"minecraft:overworld"}
    execute store result storage anywhere: at.Pos[0] double 1 run scoreboard players get @s ckenja.crafter88.x
    execute store result storage anywhere: at.Pos[1] double 1 run scoreboard players get @s ckenja.crafter88.y
    execute store result storage anywhere: at.Pos[2] double 1 run scoreboard players get @s ckenja.crafter88.z
    function #anywhere:run
    clone 0 20 0 0 20 0 ~ ~ ~ replace

# 次tickのマーカーを召喚する。
# 自分がどの方向から出てきたか保存してると軽量化できる(結論: ブロック取ってきた方が軽い)
    scoreboard players operation $place.marker.x ckenja.crafter88 = @s ckenja.crafter88.x
    scoreboard players operation $place.marker.y ckenja.crafter88 = @s ckenja.crafter88.y
    scoreboard players operation $place.marker.z ckenja.crafter88 = @s ckenja.crafter88.z
    scoreboard players operation $place.ownerID ckenja.crafter88 = @s ckenja.crafter88
    execute if data storage ckenja.crafter88: place.marker.directionList[{value:"+X"}] positioned ~1 ~ ~ if block ~ ~ ~ #ckenja.crafter88:air unless data entity @s data.ckenja.crafter88.place.marker{attackDirection:"+X"} unless entity @e[type=marker,tag=ckenja.crafter88.place.marker,distance=..0.01] summon marker run function ckenja.crafter88:place/marker/init/x
    execute if data storage ckenja.crafter88: place.marker.directionList[{value:"-X"}] positioned ~-1 ~ ~ if block ~ ~ ~ #ckenja.crafter88:air unless data entity @s data.ckenja.crafter88.place.marker{attackDirection:"-X"} unless entity @e[type=marker,tag=ckenja.crafter88.place.marker,distance=..0.01] summon marker run function ckenja.crafter88:place/marker/init/-x
    execute if data storage ckenja.crafter88: place.marker.directionList[{value:"+Y"}] positioned ~ ~1 ~ if block ~ ~ ~ #ckenja.crafter88:air unless data entity @s data.ckenja.crafter88.place.marker{attackDirection:"+Y"} unless entity @e[type=marker,tag=ckenja.crafter88.place.marker,distance=..0.01] summon marker run function ckenja.crafter88:place/marker/init/y
    execute if data storage ckenja.crafter88: place.marker.directionList[{value:"-Y"}] positioned ~ ~-1 ~ if block ~ ~ ~ #ckenja.crafter88:air unless data entity @s data.ckenja.crafter88.place.marker{attackDirection:"-Y"} unless entity @e[type=marker,tag=ckenja.crafter88.place.marker,distance=..0.01] summon marker run function ckenja.crafter88:place/marker/init/-y
    execute if data storage ckenja.crafter88: place.marker.directionList[{value:"+Z"}] positioned ~ ~ ~1 if block ~ ~ ~ #ckenja.crafter88:air unless data entity @s data.ckenja.crafter88.place.marker{attackDirection:"+Z"} unless entity @e[type=marker,tag=ckenja.crafter88.place.marker,distance=..0.01] summon marker run function ckenja.crafter88:place/marker/init/z
    execute if data storage ckenja.crafter88: place.marker.directionList[{value:"-Z"}] positioned ~ ~ ~-1 if block ~ ~ ~ #ckenja.crafter88:air unless data entity @s data.ckenja.crafter88.place.marker{attackDirection:"-Z"} unless entity @e[type=marker,tag=ckenja.crafter88.place.marker,distance=..0.01] summon marker run function ckenja.crafter88:place/marker/init/-z