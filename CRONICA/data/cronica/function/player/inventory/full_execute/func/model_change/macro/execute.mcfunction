# =================================================================================================

##【 IMPULSE 】

  ## モデル書き換え実行

    # 置き換え
      $item modify entity @s container.$(SlotNum) cronica:$(Model)

    # オフハンド
      $execute if score @s SCORE.cronica.INVENTORY.FullExecute.$(function).SlotNum matches 36 run \
        item modify entity @s weapon.offhand cronica:$(Model)
# =================================================================================================
# ver 0.11.0
