scoreboard objectives add SCORE.cronica.CONFIG dummy
scoreboard players set #20 SCORE.cronica.CONFIG 20
# =================================================================================================

##【 ACTIVATE 】

  ## 一定時間後にリキャストを解除する

    # リキャスト解除判定

      # 現在時間の取得
        scoreboard objectives add SCORE.cronica.INVENTORY.RecastCheck.ElapsedTime dummy
        execute store result score @s SCORE.cronica.INVENTORY.RecastCheck.ElapsedTime run time query gametime
        $scoreboard players remove @s SCORE.cronica.INVENTORY.RecastCheck.ElapsedTime $(RecastStartTime)

      # 目標時間の取得
        scoreboard objectives add SCORE.cronica.INVENTORY.RecastCheck.RecastTime dummy
        $scoreboard players set @s SCORE.cronica.INVENTORY.RecastCheck.RecastTime $(RecastTime)
        scoreboard players operation @s SCORE.cronica.INVENTORY.RecastCheck.RecastTime *= #20 SCORE.cronica.CONFIG

      # 目標と現在の時間の差分判定
        execute if score @s SCORE.cronica.INVENTORY.RecastCheck.ElapsedTime >= @s SCORE.cronica.INVENTORY.RecastCheck.RecastTime run \
          function cronica:player/inventory/detect/consume_item/recast_check/macro/complete with storage cronica:temp RecastCheckActivation

    # スコアボード削除
      scoreboard objectives remove SCORE.cronica.INVENTORY.RecastCheck.ElapsedTime
      scoreboard objectives remove SCORE.cronica.INVENTORY.RecastCheck.RecastTime
# =================================================================================================
# ver 0.14.1
