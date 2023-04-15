#> ckenja.crafter88:tick/player/summon_interaction
#
#
#
# 0within function ckenja.crafter88:tick/player/_

summon interaction ~ ~1.2 ~0.15 {width:0.15f,height:0.5f,Tags:["ckenja.crafter88.interaction"]}
summon interaction ~ ~1.2 ~-0.15 {width:0.15f,height:0.5f,Tags:["ckenja.crafter88.interaction"]}
summon interaction ~0.15 ~1.2 ~ {width:0.15f,height:0.5f,Tags:["ckenja.crafter88.interaction"]}
summon interaction ~-0.15 ~1.2 ~ {width:0.15f,height:0.5f, Tags:["ckenja.crafter88.interaction"]}

execute anchored eyes rotated ~ 0 run summon interaction ^ ^0.1 ^0 {width:0.6f,height:0.01f,Tags:["ckenja.crafter88.interaction"]}

summon interaction ~ ~1.2 ~ {width:0.6f,height:0.01f,Tags:["ckenja.crafter88.interaction"]}
function ckenja.crafter88:skill/particle/_
