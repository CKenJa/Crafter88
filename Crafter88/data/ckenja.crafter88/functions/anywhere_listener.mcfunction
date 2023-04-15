#> ckenja.crafter88:anywhere_listener
#
#
#
# @within tag/function anywhere:functions

execute if data storage anywhere: {function:"ckenja.crafter88:marker/clone"} run function ckenja.crafter88:marker/clone/anywhere
execute if data storage anywhere: {function:"ckenja.crafter88:picking/item"} run function ckenja.crafter88:picking/register/check_loaded
execute if data storage anywhere: {function:"ckenja.crafter88:marker/init/double"} if block ~ ~ ~ #ckenja.crafter88:double run function ckenja.crafter88:marker/init/double.anywhere
