# =================================================================================================

##【 IMPULSE 】

  ## モデル書き換え実行

    # 基本処理
      $execute if data storage cronica:temp FullExecute_model_change{ItemID: "$(TargetID)"} run \
        item modify entity @s container.$(SlotNum) cronica:$(TargetModel)

    # オフハンド処理
      $execute \
          if data storage cronica:temp FullExecute_model_change{ItemID: "$(TargetID)"} \
          if score @s SCORE.cronica.INVENTORY.FullExecute.model_change.SlotNum matches 36 \
        run \
          item modify entity @s weapon.offhand cronica:$(TargetModel)

    # カーソル処理
      $execute \
          if data storage cronica:temp FullExecute_model_change{ItemID: "$(TargetID)"} \
          if score @s SCORE.cronica.INVENTORY.FullExecute.model_change.SlotNum matches 36 \
        run \
          item modify entity @s player.cursor cronica:$(TargetModel)
# =================================================================================================
# ver 0.11.0
