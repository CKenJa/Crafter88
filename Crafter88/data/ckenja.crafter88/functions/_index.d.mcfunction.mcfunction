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
    #declare score_holder #attack_launch_modifier

#>
#@within
#   function ckenja.crafter88:tick/_
#   function ckenja.crafter88:init/_
#   * ckenja.crafter88:place/marker/**
    #declare score_holder #place.marker.boolean
