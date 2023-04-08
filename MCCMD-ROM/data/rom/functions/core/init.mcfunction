#> rom:core/init
#
# このデータパックに必要なものを初期化する
#
# @within function rom:core/load


#> IDを振るためのスコアボード
# @within function rom:**
  #declare storage rom:
  #declare score_holder $LatestProvidedAddress
  #declare score_holder $Address
  scoreboard objectives add Rom.ID dummy

# ストレージシフトに使うデータ
  data modify storage rom: TwoEmptyLists set value [[],[]]
  data modify storage rom: ThreeEmptyLists set value [[],[],[]]
  data modify storage rom: Initial set value [[[[[[[[{},{},{},{}],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]]
# メインになるストレージ
  data modify storage rom: _ set from storage rom: Initial

#> 計算に使うスコアボード
# @within function rom:**
  scoreboard objectives add Rom.Temporary dummy
  scoreboard objectives add Rom.Const dummy
scoreboard players set $4 Rom.Const 4
scoreboard players set $65536 Rom.Const 65536