# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## データ関連管理

    # スコア作成
      $scoreboard objectives add SCORE.cronica.INVENTORY.FullExecute.$(Function).SlotNum dummy
      $scoreboard players set @s SCORE.cronica.INVENTORY.FullExecute.$(Function).SlotNum -1

  ## 後続処理管理

    # インベントリ探索
      $function cronica:player/inventory/full_execute/common/macro/main with storage cronica:temp FullExecute_$(Function)
# =================================================================================================
# ver 0.13.0
