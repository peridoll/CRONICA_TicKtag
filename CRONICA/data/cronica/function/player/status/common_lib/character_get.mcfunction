# =================================================================================================

## アイテム入手

# 保存済みのアイテムIDを取得






# 全体でアイテムを持っているかを確認(オフハンドはなぜか含まれない)
$execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}}}]}] run tag @s add TAG.cronica.CHARACTER.$(ItemID).Has

# オフハンドにアイテムがあるかを確認
data modify storage cronica:temp ItemID.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
$execute if data storage cronica:temp ItemID.Offhand{Value: "$(ItemID)"} run tag @s add TAG.cronica.CHARACTER.$(ItemID).Has

# どこにもなかったから入手
$execute as @s[tag=!TAG.cronica.CHARACTER.$(ItemID).Has] run function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/item_clear
$execute as @s[tag=!TAG.cronica.CHARACTER.$(ItemID).Has] run loot give @s loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)

# 片付け
$tag @s remove TAG.cronica.CHARACTER.$(ItemID).Has
data remove storage cronica:temp ItemID

## スコア管理

# モード用スコア設置
$scoreboard objectives add SCORE.cronica.MODE.$(ItemID) dummy
$scoreboard players add @s SCORE.cronica.MODE.$(ItemID) 0
# =================================================================================================
