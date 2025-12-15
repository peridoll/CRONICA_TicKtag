# =================================================================================================

##【 TICK 】

  ## 一定時間後にリキャストを解除する

    # リキャスト解除判定

      # 現在時間の取得
        scoreboard objectives add SCORE.cronica.SYSTEM.BasicRecastCheck.CurrentTime dummy
        execute store result score @s SCORE.cronica.SYSTEM.BasicRecastCheck.CurrentTime run time query gametime

      # 開始時間との差分判定
        $scoreboard players remove @s SCORE.cronica.SYSTEM.BasicRecastCheck.CurrentTime $(RecastStartTime)

        $execute if score @s SCORE.cronica.SYSTEM.BasicRecastCheck.CurrentTime matches $(RecastTime).. run \
          function cronica:player/inventory/detect/consume_item/basic_recast/complete/macro/complete \
          { \
            "HandType": "$(HandType)" \
          }

    # スコアボード削除
      scoreboard objectives remove SCORE.cronica.SYSTEM.BasicRecastCheck.CurrentTime
# =================================================================================================
# ver 0.14.0
