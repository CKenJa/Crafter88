#> rom:core/provide
#
# 指定されたエンティティのデータを、特定のオフセットで呼び出せるようにする
#
# @within rom:api/please

# 最後に呼び出したIDを記録する
  scoreboard players operation $LatestProvidedAddress Rom.ID = $Address Rom.Temporary

# リセット
  data remove storage rom: _[-4][-4][-4][-4][-4][-4][-4][6]
  data remove storage rom: _[-4][-4][-4][-4][-4][-4][-4][5]
  data remove storage rom: _[-4][-4][-4][-4][-4][-4][-4][4]
  data remove storage rom: _[-4][-4][-4][-4][-4][-4][6]
  data remove storage rom: _[-4][-4][-4][-4][-4][-4][5]
  data remove storage rom: _[-4][-4][-4][-4][-4][-4][4]
  data remove storage rom: _[-4][-4][-4][-4][-4][6]
  data remove storage rom: _[-4][-4][-4][-4][-4][5]
  data remove storage rom: _[-4][-4][-4][-4][-4][4]
  data remove storage rom: _[-4][-4][-4][-4][6]
  data remove storage rom: _[-4][-4][-4][-4][5]
  data remove storage rom: _[-4][-4][-4][-4][4]
  data remove storage rom: _[-4][-4][-4][6]
  data remove storage rom: _[-4][-4][-4][5]
  data remove storage rom: _[-4][-4][-4][4]
  data remove storage rom: _[-4][-4][6]
  data remove storage rom: _[-4][-4][5]
  data remove storage rom: _[-4][-4][4]
  data remove storage rom: _[-4][6]
  data remove storage rom: _[-4][5]
  data remove storage rom: _[-4][4]
  data remove storage rom: _[6]
  data remove storage rom: _[5]
  data remove storage rom: _[4]

# ストレージシフト１
  scoreboard players operation $Address Rom.Temporary *= $65536 Rom.Const
# 上位2bitを元にオフセット要素を末尾追加する
  execute if score $Address Rom.Temporary matches 1073741824.. run data modify storage rom: _ append value []
  execute if score $Address Rom.Temporary matches ..-1073741825 run data modify storage rom: _ append from storage rom: TwoEmptyLists[]
  execute if score $Address Rom.Temporary matches -1073741824..-1 run data modify storage rom: _ append from storage rom: ThreeEmptyLists[]

# ストレージチェック２
  execute unless data storage rom: _[-4][0] run data modify storage rom: _[-4] set from storage rom: Initial[0]
# ストレージシフト２
  scoreboard players operation $Address Rom.Temporary *= $4 Rom.Const
# 上位2bitを元にオフセット要素を末尾追加する
  execute if score $Address Rom.Temporary matches 1073741824.. run data modify storage rom: _[-4] append value []
  execute if score $Address Rom.Temporary matches ..-1073741825 run data modify storage rom: _[-4] append from storage rom: TwoEmptyLists[]
  execute if score $Address Rom.Temporary matches -1073741824..-1 run data modify storage rom: _[-4] append from storage rom: ThreeEmptyLists[]

# ストレージチェック３
  execute unless data storage rom: _[-4][-4][0] run data modify storage rom: _[-4][-4] set from storage rom: Initial[0][0]
# ストレージシフト３
  scoreboard players operation $Address Rom.Temporary *= $4 Rom.Const
# 上位2bitを元にオフセット要素を末尾追加する
  execute if score $Address Rom.Temporary matches 1073741824.. run data modify storage rom: _[-4][-4] append value []
  execute if score $Address Rom.Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4] append from storage rom: TwoEmptyLists[]
  execute if score $Address Rom.Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4] append from storage rom: ThreeEmptyLists[]

# ストレージチェック４
  execute unless data storage rom: _[-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4] set from storage rom: Initial[0][0][0]
# ストレージシフト４
  scoreboard players operation $Address Rom.Temporary *= $4 Rom.Const
# 上位2bitを元にオフセット要素を末尾追加する
  execute if score $Address Rom.Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4] append value []
  execute if score $Address Rom.Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4] append from storage rom: TwoEmptyLists[]
  execute if score $Address Rom.Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4] append from storage rom: ThreeEmptyLists[]

# ストレージチェック５
  execute unless data storage rom: _[-4][-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4][-4] set from storage rom: Initial[0][0][0][0]
# ストレージシフト５
  scoreboard players operation $Address Rom.Temporary *= $4 Rom.Const
# 上位2bitを元にオフセット要素を末尾追加する
  execute if score $Address Rom.Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4] append value []
  execute if score $Address Rom.Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4] append from storage rom: TwoEmptyLists[]
  execute if score $Address Rom.Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4] append from storage rom: ThreeEmptyLists[]

# ストレージチェック６
  execute unless data storage rom: _[-4][-4][-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4][-4][-4] set from storage rom: Initial[0][0][0][0][0]
# ストレージシフト６
  scoreboard players operation $Address Rom.Temporary *= $4 Rom.Const
# 上位2bitを元にオフセット要素を末尾追加する
  execute if score $Address Rom.Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4] append value []
  execute if score $Address Rom.Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4] append from storage rom: TwoEmptyLists[]
  execute if score $Address Rom.Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4] append from storage rom: ThreeEmptyLists[]

# ストレージチェック７
  execute unless data storage rom: _[-4][-4][-4][-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4][-4][-4][-4] set from storage rom: Initial[0][0][0][0][0][0]
# ストレージシフト７
  scoreboard players operation $Address Rom.Temporary *= $4 Rom.Const
# 上位2bitを元にオフセット要素を末尾追加する
  execute if score $Address Rom.Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4][-4] append value []
  execute if score $Address Rom.Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4][-4] append from storage rom: TwoEmptyLists[]
  execute if score $Address Rom.Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4][-4] append from storage rom: ThreeEmptyLists[]

# ストレージチェック８
  execute unless data storage rom: _[-4][-4][-4][-4][-4][-4][-4][0] run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] set from storage rom: Initial[0][0][0][0][0][0][0]
# ストレージシフト８
  scoreboard players operation $Address Rom.Temporary *= $4 Rom.Const
# 上位2bitを元にオフセット要素を末尾追加する
  execute if score $Address Rom.Temporary matches 1073741824.. run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] append value {}
  execute if score $Address Rom.Temporary matches ..-1073741825 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] append from storage rom: two_empty_maps[]
  execute if score $Address Rom.Temporary matches -1073741824..-1 run data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4] append from storage rom: three_empty_maps[]
