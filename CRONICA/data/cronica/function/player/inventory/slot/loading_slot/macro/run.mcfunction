# =================================================================================================

##【 IMPULSE 】

  ## データ取得

    # スロットID取得
      $data modify storage cronica:temp GetInventory.Slot set from storage cronica:personal/$(UUID)/inventory/saving_slot $(ItemID)

  ## アイテム取得

    # 通常インベントリ
      function cronica:player/inventory/slot/loading_slot/macro/main with storage cronica:temp GetInventory

    # オフハンド
      $execute if data storage cronica:temp GetInventory{Slot: "36"} if data storage cronica:temp GetInventory{Offhand: ""} run tag @s add TAG.cronica.CHARACTER.$(ItemID).Has
      $execute if data storage cronica:temp GetInventory{Slot: "36"} if data storage cronica:temp GetInventory{Offhand: ""} run loot replace entity @s weapon.offhand loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
# =================================================================================================
# ver 0.11.0
