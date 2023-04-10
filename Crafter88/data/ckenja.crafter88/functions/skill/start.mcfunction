#> ckenja.crafter88:skill/start
#
#
#
# @within function ckenja.crafter88:skill/right_click

# 視線先に移動。方向も調べる
    data modify storage ckenja.looking_at_function: function set value "ckenja.crafter88:skill/start"
    data modify storage ckenja.looking_at_function: as_entity set value true
    function ckenja.looking_at_function:run
# 視線先にブロックがない場合。方向も調べる
    execute if data storage ckenja.looking_at_function: {success:0} anchored eyes positioned ^ ^ ^5 run function ckenja.crafter88:skill/is_air
