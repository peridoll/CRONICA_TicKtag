## 共通処理

# タグ
tag @s[scores={SCORE.cronica.STATUS.Sneak=1..}] add TAG.cronica.SNEAKING

# スコア設置
scoreboard objectives add SCORE.cronica.STATUS.Sneak minecraft.custom:minecraft.sneak_time
scoreboard players set @s SCORE.cronica.STATUS.Sneak 0

# ItemID取得
data modify storage cronica:context ItemID.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
data modify storage cronica:context ItemID.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemID

# Ikaros
execute if data storage cronica:context ItemID{Mainhand:"ApollonBow"} run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload
execute if data storage cronica:context ItemID{Offhand:"ApollonBow"} run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload

# データリセット
data remove storage cronica:context ItemID