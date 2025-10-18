# =================================================================================================


# データ記入
$data modify storage cronica:temp LoadingSlot.Slot set from storage cronica:personal/$(UUID)/inventory/slot $(ItemID)

# インベントリ
execute if score @s SCORE.cronica.STATUS.LoadingSlot matches 0..35 run function cronica:player/status/inventory/slot/load/main_lib with storage cronica:temp LoadingSlot
# オフハンド
$execute if score @s SCORE.cronica.STATUS.LoadingSlot matches 106 run loot replace entity @s weapon.offhand loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
# 未記入
$execute unless score @s SCORE.cronica.STATUS.LoadingSlot matches 0.. run loot give @s loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)

# 撤去

# =================================================================================================
