# =================================================================================================

##【 IMPULSE 】

  ## 後続処理管理

    # アイテム削除
      $execute if data storage cronica:temp FullExecute_clear_item{ItemID: "$(TargetID)"} run \
        item replace entity @s container.$(SlotNum) with air

    # オフハンド処理
      $execute \
          if data storage cronica:temp FullExecute_clear_item{ItemID: "$(TargetID)"} \
          if score @s SCORE.cronica.INVENTORY.FullExecute.clear_item.SlotNum matches 36 \
        run \
          item replace entity @s weapon.offhand with air

    # カーソル削除
      $execute \
          if data storage cronica:temp FullExecute_clear_item{ItemID: "$(TargetID)"} \
          if score @s SCORE.cronica.INVENTORY.FullExecute.clear_item.SlotNum matches 36 \
        run \
        item replace entity @s player.cursor with air
# =================================================================================================
# ver 0.12.0
