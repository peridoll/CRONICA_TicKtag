# =================================================================================================

##【 アイテム所在確認 】(所在不明の場合、入手処理を実行)

# 全体でアイテムを持っているかを確認(オフハンドはなぜか含まれない)
$execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "$(ItemID)"}}}]}] run tag @s add TAG.cronica.CHARACTER.$(ItemID).Has
# オフハンドにアイテムがあるかを確認
data modify storage cronica:temp character_get.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
$execute if data storage cronica:temp character_get{Offhand: "$(ItemID)"} run tag @s add TAG.cronica.CHARACTER.$(ItemID).Has

##【 所定のアイテムを入手 】

# アイテムを削除 (検知範囲外に所持していた場合、この処理で削除を行う)
$execute as @s[tag=!TAG.cronica.CHARACTER.$(ItemID).Has] run function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/item_clear
# "MasterType" が "Unique" の場合、保存済みのアイテムIDを取得 ("Select"は複数所持可能なため現状記憶が困難)
$data modify storage cronica:temp character_get.MasterType set value "$(MasterType)"
$execute as @s[tag=!TAG.cronica.CHARACTER.$(ItemID).Has] if data storage cronica:temp character_get{MasterType: "unique"} run function cronica:player/status/inventory/slot/load/run {MasterID: "$(MasterID)", MasterType: "$(MasterType)", ItemID: "$(ItemID)", ItemCategory: "$(ItemCategory)"}
# "SelectSkill"を入手
$execute as @s[tag=!TAG.cronica.CHARACTER.$(ItemID).Has] if data storage cronica:temp character_get{MasterType: "select"} run loot give @s loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)

##【 アイテムを装飾 】

# アイテムの装飾 (入手したアイテムに対してのみ実行)
# $execute as @s[tag=!TAG.cronica.CHARACTER.$(ItemID).Has] run function cronica:player/status/common_lib/modify {ItemID: "$(ItemID)", Model: "common/lore/item_category/$(ItemCategory)", Value:""}
# $execute as @s[tag=!TAG.cronica.CHARACTER.$(ItemID).Has] run function cronica:player/status/common_lib/modify {ItemID: "$(ItemID)", Model: "character/$(MasterID)/$(MasterType)/$(ItemID)/description", Value:""}
# $execute as @s[tag=!TAG.cronica.CHARACTER.$(ItemID).Has] run function cronica:player/status/common_lib/modify_status {ItemID: "$(ItemID)", MasterID: "$(MasterID)", MasterType: "$(MasterType)", ItemCategory: "$(ItemCategory)"}
# $execute as @s[tag=!TAG.cronica.CHARACTER.$(ItemID).Has] run function cronica:player/status/common_lib/modify {ItemID: "$(ItemID)", Model: "character/$(MasterID)/$(MasterType)/$(ItemID)/flavor", Value:""}

##【 状態回復 】

# 状態初期化
$tag @s remove TAG.cronica.CHARACTER.$(ItemID).Has
data remove storage cronica:temp character_get

##【 スコア管理 】

# モード用スコア設置
$scoreboard objectives add SCORE.cronica.MODE.$(ItemID) dummy
$scoreboard players add @s SCORE.cronica.MODE.$(ItemID) 0
# =================================================================================================
