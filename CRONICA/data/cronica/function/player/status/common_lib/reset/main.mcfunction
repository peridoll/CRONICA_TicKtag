# =================================================================================================

##【 IMPULSE 】

  # 特定スロットにアイテムあり
    $execute if entity @s[nbt= {Inventory: [{Slot: $(Slot)b}]}] run tag @s add TAG.cronica.STATUS.SkillReset.Found
    execute if score @s SCORE.cronica.STATUS.SkillReset matches 36 run tag @s add TAG.cronica.STATUS.SkillReset.Found

    execute as @s[tag=TAG.cronica.STATUS.SkillReset.Found] run say 6666

  # アイテム情報取得
    $execute as @s[tag=TAG.cronica.STATUS.SkillReset.Found] run data modify storage cronica:temp SkillReset.MasterID set from entity @s Inventory[{Slot: $(Slot)b}].components."minecraft:custom_data".MasterID
    $execute as @s[tag=TAG.cronica.STATUS.SkillReset.Found] run data modify storage cronica:temp SkillReset.MasterType set from entity @s Inventory[{Slot: $(Slot)b}].components."minecraft:custom_data".MasterType
    $execute as @s[tag=TAG.cronica.STATUS.SkillReset.Found] run data modify storage cronica:temp SkillReset.ItemID set from entity @s Inventory[{Slot: $(Slot)b}].components."minecraft:custom_data".ItemID
    execute if score @s SCORE.cronica.STATUS.SkillReset matches 36 run data modify storage cronica:temp SkillReset.MasterID set from entity @s equipment.offhand.components."minecraft:custom_data".MasterID
    execute if score @s SCORE.cronica.STATUS.SkillReset matches 36 run data modify storage cronica:temp SkillReset.MasterType set from entity @s equipment.offhand.components."minecraft:custom_data".MasterType
    execute if score @s SCORE.cronica.STATUS.SkillReset matches 36 run data modify storage cronica:temp SkillReset.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID

  # リセット処理
    execute as @s[tag=TAG.cronica.STATUS.SkillReset.Found] run function cronica:player/status/common_lib/reset/main_lib with storage cronica:temp SkillReset
    execute as @s[tag=TAG.cronica.STATUS.SkillReset.Found] run function cronica:player/status/common_lib/ct/reset with storage cronica:temp SkillReset

  # タグ削除
    execute as @s[tag=TAG.cronica.STATUS.SkillReset.Found] run tag @s remove TAG.cronica.STATUS.SkillReset.Found
# =================================================================================================
# ver 0.10.3

say 333