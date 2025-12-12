# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 基本処理呼び出し
      function cronica:player/inventory/recast/macro/main { ItemID : "begin_twilight" }

    # 再起処理
      execute unless entity @a run scoreboard objectives add SCORE.cronica.CHARACTER.begin_twilight.RecastTime dummy
      execute if entity @a[scores = {SCORE.cronica.CHARACTER.begin_twilight.RecastTime = 0..}] run \
        schedule function cronica:player/character/ikaros/unique/begin_twilight/library/recast 1t
# =================================================================================================
# ver 0.13.0
