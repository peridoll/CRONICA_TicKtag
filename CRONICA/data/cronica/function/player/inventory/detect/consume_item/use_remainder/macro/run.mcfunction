# =================================================================================================

##【 ACTIVATION 】

  ## アイテム消費検知

    # 使用済みアイテム返却
      $loot replace entity @s $(HandTypeB) loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
      $function cronica:player/inventory/detect/change_inventory/default_loot/input_data {SlotTypeA:"$(HandTypeA)", SlotTypeB: "$(HandTypeB)"}

    # リキャスト再設定

      # 再設定時の時間を1tick前に設定
        scoreboard objectives add SCORE.cronica.INVENTORY.UseRemainder.RecastStartTime dummy
        execute store result score @s SCORE.cronica.INVENTORY.UseRemainder.RecastStartTime run time query gametime
        scoreboard players remove @s SCORE.cronica.INVENTORY.UseRemainder.RecastStartTime 1
        execute store result storage cronica:temp UseRemainderActivation.RecastStartTime int 1 run scoreboard players get @s SCORE.cronica.INVENTORY.UseRemainder.RecastStartTime
        scoreboard objectives remove SCORE.cronica.INVENTORY.UseRemainder.RecastStartTime

      # 基本リキャスト構築(アイテム消費時)
        function cronica:player/inventory/detect/consume_item/advancement/activate/macro/recast_setup with storage cronica:temp UseRemainderActivation
# =================================================================================================
# ver 0.14.1
