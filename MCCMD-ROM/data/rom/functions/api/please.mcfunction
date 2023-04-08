#> rom:api/please
#
# 指定されたアドレスのデータを提供(特定のオフセットで呼び出せるように)する
#
# @input storage rom: Argument.Address : int @ 0..65535
# @api

# 新たに提供する必要があるかをチェックする
  execute store result score $Address Rom.Temporary run data get storage rom: Argument.ID
# 必要な場合は提供する
  execute unless score $Address Rom.Temporary = $LatestProvidedAddress Rom.ID run function rom:core/provide
# リセット
  scoreboard players reset $Address Rom.Temporary
  scoreboard players reset $LatestProvidedAddress Rom.ID