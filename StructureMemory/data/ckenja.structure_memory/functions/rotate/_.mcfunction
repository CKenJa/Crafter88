#> ckenja.structure_memory:rotate/_
#
#　実行地点の構造物を回転して保存します
#
# @within function ckenja.structure_memory:anywhere_listener

#>
#@private
    #declare score_holder $tmp.pos.x
    #declare score_holder $tmp.pos.z

# 一時場所へ移動。今回はすべて使うが、空気はコピーされないのでリセットしてから
    execute in ckenja.structure_memory:void run fill 16 16 16 63 63 63 structure_void replace
    clone ~ ~ ~ ~47 ~47 ~47 to ckenja.structure_memory:void 16 16 16 masked

# ストラクチャブロックで読み込み
    setblock 16 15 16 structure_block{name:"ckenja.structure_memory:tmp",posX:0,posY:1,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"SAVE",ignoreEntities:1b}
    execute store result block 16 15 16 sizeX int 1 run scoreboard players get $tmp.input.size.x ckenja.structure_memory
    execute store result block 16 15 16 sizeY int 1 run scoreboard players get $tmp.input.size.y ckenja.structure_memory
    execute store result block 16 15 16 sizeZ int 1 run scoreboard players get $tmp.input.size.z ckenja.structure_memory

    setblock 16 14 16 redstone_block
    setblock 16 14 16 structure_void
    setblock 16 15 16 structure_void

# 削除
    execute in ckenja.structure_memory:void run fill 16 16 16 63 63 63 structure_void replace

# ストラクチャブロックで回転。posX、posZを回転と大きさに合わせる
    setblock 16 15 16 structure_block{name:"ckenja.structure_memory:tmp",posX:0,posY:1,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b}
    scoreboard players operation $tmp.pos.x ckenja.structure_memory = $tmp.input.size.x ckenja.structure_memory
    scoreboard players operation $tmp.pos.z ckenja.structure_memory = $tmp.input.size.z ckenja.structure_memory
    execute unless score $tmp.input.rotate ckenja.structure_memory matches 180 unless score $tmp.input.rotate ckenja.structure_memory matches 0 run scoreboard players operation $tmp.pos.x ckenja.structure_memory >< $tmp.pos.z ckenja.structure_memory
    execute if score $tmp.input.rotate ckenja.structure_memory matches 90..180 store result block 16 15 16 posX int 1 run scoreboard players remove $tmp.pos.x ckenja.structure_memory 1
    execute if score $tmp.input.rotate ckenja.structure_memory matches 180..270 store result block 16 15 16 posZ int 1 run scoreboard players remove $tmp.pos.z ckenja.structure_memory 1

    execute if score $tmp.input.rotate ckenja.structure_memory matches 90 run data modify block 16 15 16 rotation set value "CLOCKWISE_90"
    execute if score $tmp.input.rotate ckenja.structure_memory matches 180 run data modify block 16 15 16 rotation set value "CLOCKWISE_180"
    execute if score $tmp.input.rotate ckenja.structure_memory matches 270 run data modify block 16 15 16 rotation set value "COUNTERCLOCKWISE_90"

    setblock 16 14 16 redstone_block
    setblock 16 14 16 structure_void
    setblock 16 15 16 structure_void

# 割り当て
    scoreboard players set $tmp.input.size.x ckenja.structure_memory 48
    scoreboard players set $tmp.input.size.y ckenja.structure_memory 48
    scoreboard players set $tmp.input.size.z ckenja.structure_memory 48
    function ckenja.structure_memory:allocate/_
