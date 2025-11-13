# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常実行、マクロ、手動実行不可

  ## データ取得

    # スロットID取得
      $data modify storage cronica:temp $(StorageName).Slot set from storage cronica:personal/$(UUID)/inventory/saving_slot $(ItemID)

  ## アイテム取得

    # 通常インベントリ
      $function core:player/character/give/macro/loot_get/loading_slot_lib with storage cronica:temp $(StorageName)

    # オフハンド
      data modify storage cronica:temp $(StorageName).Offhand set value ""
      data modify storage cronica:temp $(StorageName).Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      $execute if data storage cronica:temp $(StorageName){Slot: 36} if data storage cronica:temp $(StorageName){Offhand: ""} run \
        scoreboard players remove @s SCORE.cronica.INVENTORY.$(ItemID).StackCount 1
      $execute if data storage cronica:temp $(StorageName){Slot: 36} if data storage cronica:temp $(StorageName){Offhand: ""} run \
        loot replace entity @s weapon.offhand loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
# =================================================================================================
# ver 0.12.0
