# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## データ管理

    # スコア管理

      # 個数記入
        scoreboard objectives add SCORE.cronica.INVENTORY.FullExecute.CountCheck dummy
        execute store result score @s SCORE.cronica.INVENTORY.FullExecute.CountCheck run \
          data get storage cronica:temp FullExecute_count_check.Count



  ## プレイヤー管理

    # 個数確認実施
      $execute \
          if data storage cronica:temp FullExecute_count_check{$(TargetType): "$(TargetID)"} \
          if score @s SCORE.cronica.INVENTORY.FullExecute.CountCheck matches 1.. \
        run \
          scoreboard players operation @s $(ScoreName) += @s SCORE.cronica.INVENTORY.FullExecute.CountCheck

  ## データ管理

    # スコア管理

      # 個数削除
        scoreboard objectives remove SCORE.cronica.INVENTORY.FullExecute.CountCheck
# =================================================================================================
# ver 0.13.0
