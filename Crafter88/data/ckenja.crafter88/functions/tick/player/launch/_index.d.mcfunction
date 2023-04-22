#> ckenja.crafter88:tick/player/launch/_index.d
#
#
#
# @private

#>
#@within function ckenja.crafter88:tick/player/launch/*
    #declare score_holder $tick.player.launch.x
    #declare score_holder $tick.player.launch.y
    #declare score_holder $tick.player.launch.z

#> deltaのスコア
#@within function ckenja.crafter88:tick/player/launch/*
    #declare score_holder $x
    #declare score_holder $y
    #declare score_holder $z

#>
#@within
#   function ckenja.crafter88:tick/player/launch/attack
#   function ckenja.crafter88:marker/tick/entity
    #declare score_holder $tick.player.launch.attack.player_id
