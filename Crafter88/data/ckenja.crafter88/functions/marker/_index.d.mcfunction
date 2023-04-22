#> ckenja.crafter88:marker/_index.d
#
#
#
# @private

#>
# マーカー増殖用の親マーカーの座標の一時保存
#@within * ckenja.crafter88:marker/**
    #declare score_holder $marker.x
    #declare score_holder $marker.y
    #declare score_holder $marker.z

#> 最初の次のマーカーを表す。貫通属性を絶対付けるタグ
#@within
#   function ckenja.crafter88:marker/init/first
#   function ckenja.crafter88:marker/tick/check_pierce
    #declare tag ckenja.crafter88.marker.first

#> ブロック設置後のマーカーを表すタグ
#@within
#   function ckenja.crafter88:marker/tick/check_count
#   function ckenja.crafter88:marker/tick/check_pierce
#   function ckenja.crafter88:marker/init/*
    #declare tag ckenja.crafter88.marker.used

#> 召喚するmarkerが貫通属性を持つかどうかの(boolean)
#@within
#   function ckenja.crafter88:marker/init/*
#   function ckenja.crafter88:marker/tick/check_pierce
#   function ckenja.crafter88:marker/tick/if_air
    #declare score_holder $marker.pierced
