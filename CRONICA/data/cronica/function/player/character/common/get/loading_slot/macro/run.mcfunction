# =================================================================================================

##【 IMPULSE 】

  ## データ取得

    # スロットID取得
      $data modify storage cronica:temp CommonGet.Slot set from storage cronica:personal/$(UUID)/inventory/saving_slot $(ItemID)

  ## アイテム取得

    # 通常インベントリ
      function cronica:player/character/common/get/loading_slot/macro/main with storage cronica:temp CommonGet

    # オフハンド
      data modify storage cronica:temp CommonGet.Offhand set value ""
      data modify storage cronica:temp CommonGet.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      $execute if data storage cronica:temp CommonGet{Slot: 36} if data storage cronica:temp CommonGet{Offhand: ""} run scoreboard players remove @s SCORE.cronica.INVENTORY.$(ItemID).Count 1
      $execute if data storage cronica:temp CommonGet{Slot: 36} if data storage cronica:temp CommonGet{Offhand: ""} run loot replace entity @s weapon.offhand loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
# =================================================================================================
# ver 0.11.0
