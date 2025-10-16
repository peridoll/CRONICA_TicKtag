# =================================================================================================

# スコア取得
scoreboard objectives add SCORE.cronica.STATUS.LoadingSlot dummy
scoreboard players set @s SCORE.cronica.STATUS.LoadingSlot -1
$execute store result score @s SCORE.cronica.STATUS.LoadingSlot run data get storage cronica:personal/$(UUID)/saving_slot $(ItemID)

# データ記入
$data modify storage cronica:temp LoadingSlot.Slot set from storage cronica:personal/$(UUID)/saving_slot $(ItemID)

# インベントリ
execute if score @s SCORE.cronica.STATUS.LoadingSlot matches 0..35 run function cronica:player/status/inventory/slot/load/main_lib with storage cronica:temp LoadingSlot
# オフハンド
$execute if score @s SCORE.cronica.STATUS.LoadingSlot matches 106 run loot replace entity @s weapon.offhand loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
# 未記入
$execute unless score @s SCORE.cronica.STATUS.LoadingSlot matches 0.. run loot give @s loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)

# 撤去
scoreboard objectives remove SCORE.cronica.STATUS.LoadingSlot
# =================================================================================================
