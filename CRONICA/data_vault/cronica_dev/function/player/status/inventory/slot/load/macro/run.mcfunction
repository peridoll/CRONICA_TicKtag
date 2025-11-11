# =================================================================================================

##【 IMPULSE 】

  ## データ取得

    # スロットID取得
      $data modify storage cronica_dev:temp GetInventory.Slot set from storage cronica_dev:personal/$(UUID)/inventory/slot $(ItemID)

  ## アイテム取得

    # 通常インベントリ
      function cronica_dev:player/status/inventory/slot/load/macro/main with storage cronica_dev:temp GetInventory

    # オフハンド
      $execute if data storage cronica_dev:temp GetInventory{Slot: "36"} if data storage cronica_dev:temp GetInventory{Offhand: ""} run tag @s add TAG.cronica_dev.CHARACTER.$(ItemID).Has
      $execute if data storage cronica_dev:temp GetInventory{Slot: "36"} if data storage cronica_dev:temp GetInventory{Offhand: ""} run loot replace entity @s weapon.offhand loot cronica_dev:character/$(MasterID)/$(MasterType)/$(ItemID)
# =================================================================================================
# ver 0.10.3
