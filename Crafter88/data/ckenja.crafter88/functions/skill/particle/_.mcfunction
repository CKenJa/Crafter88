#> ckenja.crafter88:skill/particle/_
#
#
#
# @within function ckenja.crafter88:tick/player/summon_interaction

# 視線先に移動。方向も調べる
    data modify storage ckenja.looking_at_function: function set value "ckenja.crafter88:skill/particle"
    data modify storage ckenja.looking_at_function: as_entity set value true
    function ckenja.looking_at_function:run
# 視線先にブロックがない場合。方向も調べる
    execute if data storage ckenja.looking_at_function: {success:0} anchored eyes positioned ^ ^ ^5 align xyz positioned ~0.5 ~0.5 ~0.5 run function ckenja.crafter88:skill/particle/is_air.pre
