#> ckenja.structure_memory:index.d
#
#
#
# @private

#>
#@within function ckenja.structure_memory:access/**
    #declare score_holder $tmp.id.x
    #declare score_holder $tmp.id.z

#> input and output
#@public
    #declare score_holder $tmp.id 構造物ID。割り当て時に書き留めておくこと。1～65535より外は想定していません。0番は一時場所です
    #declare score_holder $tmp.output.x accessで得られる構造物のX座標
    #declare score_holder $tmp.output.z accessで得られる構造物のZ座標
    #declare score_holder $tmp.input.size.x 構造物のX方向の大きさ0~48
    #declare score_holder $tmp.input.size.y 構造物のY方向の大きさ0~48
    #declare score_holder $tmp.input.size.z 構造物のZ方向の大きさ0~48
    #declare score_holder $tmp.input.rotate 回転する大きさ(Y軸)(時計回り)90,180,270のいずれか

#>
#@internal
#declare storage ckenja.structure_memory:
