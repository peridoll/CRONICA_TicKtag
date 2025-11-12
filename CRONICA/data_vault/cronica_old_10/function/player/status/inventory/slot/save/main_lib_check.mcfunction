# =================================================================================================
#
# CRONICA - SLOT SAVE
#
# run
# └─ main
#
# =================================================================================================

##【 IMPULSE 】

  # 特定スロットにアイテムあり
    $execute if entity @s[nbt= {Inventory: [{Slot: $(Slot)b}]}] run \
      tag @s add TAG.cronica_dev.STATUS.SavingSlot.Found
    execute if score @s SCORE.cronica_dev.STATUS.SavingSlot matches 36 run \
      tag @s add TAG.cronica_dev.STATUS.SavingSlot.Found

  # アイテム情報取得
    $execute as @s[tag=TAG.cronica_dev.STATUS.SavingSlot.Found] run \
      data modify storage cronica_dev:temp SavingSlot.ItemID set from entity @s Inventory[{Slot: $(Slot)b}].components."minecraft:custom_data".ItemID
    execute if score @s SCORE.cronica_dev.STATUS.SavingSlot matches 36 run \
      data modify storage cronica_dev:temp SavingSlot.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID

  # 保存処理
    execute as @s[tag=TAG.cronica_dev.STATUS.SavingSlot.Found] run \
      function cronica_dev:player/status/inventory/slot/save/main_lib_save with storage cronica_dev:temp SavingSlot

  # タグ削除
    execute as @s[tag=TAG.cronica_dev.STATUS.SavingSlot.Found] run tag @s remove TAG.cronica_dev.STATUS.SavingSlot.Found
# =================================================================================================
# ver 0.10.3
