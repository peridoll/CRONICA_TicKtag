# =================================================================================================

# 特定スロットにアイテムあり
$execute if entity @s[nbt= {Inventory: [{Slot: $(Slot)b}]}] run \
  tag @s add TAG.cronica.STATUS.SavingSlot.Found

# アイテム情報取得
$execute as @s[tag=TAG.cronica.STATUS.SavingSlot.Found] run \
  data modify storage cronica:temp SavingSlot.ItemID set from entity @s Inventory[{Slot: $(Slot)b}].components."minecraft:custom_data".ItemID

# 保存処理
execute as @s[tag=TAG.cronica.STATUS.SavingSlot.Found] run \
  function cronica:player/status/inventory/slot/save/main_lib_save with storage cronica:temp SavingSlot

# タグ削除
execute as @s[tag=TAG.cronica.STATUS.SavingSlot.Found] run tag @s remove TAG.cronica.STATUS.SavingSlot.Found
# =================================================================================================
