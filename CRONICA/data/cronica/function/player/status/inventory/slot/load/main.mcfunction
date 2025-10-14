# =================================================================================================

# スコア取得
scoreboard objectives add SCORE.cronica.STATUS.LoadingSlot dummy
scoreboard players set @s SCORE.cronica.STATUS.LoadingSlot -1
$execute store result score @s SCORE.cronica.STATUS.LoadingSlot run data get storage cronica:personal/$(uuid_1)$(uuid_2)$(uuid_3)$(uuid_4)/player/inventory/slot $(ItemCategory)

# データ記入
$data modify storage cronica:temp LoadingSlot.MasterID \
  set value "$(MasterID)"
$data modify storage cronica:temp LoadingSlot.MasterType \
  set value "$(MasterType)"
$data modify storage cronica:temp LoadingSlot.ItemID \
  set value "$(ItemID)"
execute store result storage cronica:temp LoadingSlot.LoadingSlot int 1 run scoreboard players get @s SCORE.cronica.STATUS.LoadingSlot

# インベントリ
execute if score @s SCORE.cronica.STATUS.LoadingSlot matches 0..35 run function cronica:player/status/inventory/slot/load/main_lib with storage cronica:temp LoadingSlot
# オフハンド
$execute if score @s SCORE.cronica.STATUS.LoadingSlot matches 106 run loot replace entity @s weapon.offhand loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
# 未記入
$execute unless score @s SCORE.cronica.STATUS.LoadingSlot matches 0.. run loot give @s loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)

# 撤去
scoreboard objectives remove SCORE.cronica.STATUS.LoadingSlot
# =================================================================================================
