#> rom:core/load
#
# データパックが初期化されていなければ、初期化する
#
# @within tag/function load

execute unless data storage rom: _ run function rom:core/init