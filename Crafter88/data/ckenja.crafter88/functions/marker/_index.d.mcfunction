#> ckenja.crafter88:marker/_index.d
#
#
#
# @private

#>
# マーカー増殖用の座標の一時保存
#@within * ckenja.crafter88:marker/**
    #declare score_holder $marker.x
    #declare score_holder $marker.y
    #declare score_holder $marker.z

#>
#@within
#   function ckenja.crafter88:marker/init/first
#   function ckenja.crafter88:skill/main
    #declare score_holder $init.first.pos.x
    #declare score_holder $init.first.pos.y
    #declare score_holder $init.first.pos.z
