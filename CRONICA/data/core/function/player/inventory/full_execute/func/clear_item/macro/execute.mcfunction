# =================================================================================================

##【 IMPULSE 】

  ## 後続処理管理

    # キャラクター関連リセット
      $execute if data storage cronica:temp FullExecute_clear_item{$(TargetType): "$(TargetID)"} run \
        function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/common/leave

    # アイテム削除
      $execute if data storage cronica:temp FullExecute_clear_item{$(TargetType): "$(TargetID)"} run \
        item replace entity @s container.$(SlotNum) with air

    # オフハンド処理
      $execute \
          if data storage cronica:temp FullExecute_clear_item{$(TargetType): "$(TargetID)"} \
          if score @s SCORE.cronica.INVENTORY.FullExecute.clear_item.SlotNum matches 36 \
        run \
          item replace entity @s weapon.offhand with air

    # カーソル削除
      $execute \
          if data storage cronica:temp FullExecute_clear_item{$(TargetType): "$(TargetID)"} \
          if score @s SCORE.cronica.INVENTORY.FullExecute.clear_item.SlotNum matches 36 \
        run \
          item replace entity @s player.cursor with air
# =================================================================================================
# ver 0.12.0
