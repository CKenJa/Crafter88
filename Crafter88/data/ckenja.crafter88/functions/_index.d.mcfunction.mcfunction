#> ckenja.crafter88:_index.d.mcfunction
# @private

#> global data
# @internal
    #declare storage ckenja.crafter88:

#> external library datas
# @public
    #declare storage util:

#> tag for interaction
# 将来的にinteraction使わないと思うからまとめず放置
# @within
#   * ckenja.crafter88:left_click**
#   * ckenja.crafter88:right_click**
    #declare tag ckenja.crafter88.interaction

#> const
#@internal
    #declare score_holder #-1
    #declare score_holder #5
    #declare score_holder #player.launch.modifier.1
    #declare score_holder #player.launch.modifier.2
    #declare score_holder #player.launch.modifier.3
    #declare score_holder #player.launch.modifier.4
    #declare score_holder #player.launch.modifier.5

#> Tag
# @within
#   function ckenja.crafter88:**
#   function ckenja.crafter88:tick/**
    #declare tag ckenja.crafter88.marker

#> player id by ohmydat
#@internal
    #declare score_holder $player_id
