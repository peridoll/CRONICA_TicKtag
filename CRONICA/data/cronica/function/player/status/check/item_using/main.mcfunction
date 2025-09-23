# =================================================================================================

##【 データ取得 】
# 所持しているアイテムやスキルの情報を取得する

#【 ItemCategory取得 】
# 所持しているアイテムやスキルのカテゴリを取得する
# MainWeapon, SubWeapon, UniqueSkill, ExtraSkill, SelectSkill など
data modify storage cronica:context ItemCategory.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemCategory
data modify storage cronica:context ItemCategory.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemCategory

#【 ItemID取得 】
# 所持しているアイテムやスキルのIDを取得する
# FlyingFeather, SearchEye, BlastBurn など
data modify storage cronica:context ItemID.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
data modify storage cronica:context ItemID.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemID

#【 ItemMode取得 】
# 所持しているアイテムやスキルのモードを取得する
# default, ice, fire など
data modify storage cronica:context ItemMode.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemMode
data modify storage cronica:context ItemMode.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemMode

#【 ItemStatus取得 】
# 所持しているアイテムやスキルのステータスを取得する
# ready, charging, ban など
data modify storage cronica:context ItemStatus.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemStatus
data modify storage cronica:context ItemStatus.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemStatus
# =================================================================================================

# 使用終了検知
execute if score @s[scores={SCORE.cronica.STATUS.ItemUsing=1..}] SCORE.cronica.STATUS.ItemUsed matches 0 run function cronica:player/status/check/item_using/finish
scoreboard players set @s SCORE.cronica.STATUS.ItemUsed 0

#【 カテゴリ別処理 】
# 各種処理へ分岐する
# スニークでの処理の場合右手に持っているものがスニークの要求がないものの可能性もあるため、両方を確認する
execute as @s[tag=TAG.cronica.STATUS.ItemUsing] run function cronica:player/status/check/item_using/category/data_get_main
execute as @s[tag=TAG.cronica.STATUS.ItemUsing] run function cronica:player/status/check/item_using/category/data_get_off
# =================================================================================================

##【 データリセット 】
# 各種取得済みデータを初期化
data remove storage cronica:context ItemCategory
data remove storage cronica:context ItemID
data remove storage cronica:context ItemStatus
data remove storage cronica:context ItemMode
# =================================================================================================
