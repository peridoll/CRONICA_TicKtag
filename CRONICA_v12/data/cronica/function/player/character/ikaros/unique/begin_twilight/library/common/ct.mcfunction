# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 基本処理呼び出し
      function core:player/character/activate/macro/ct/main { ItemID : "begin_twilight" }

    # 再起処理
      execute if entity @a[scores = {SCORE.cronica.CHARACTER.begin_twilight.CoolTime = -1..}] run \
        schedule function cronica:player/character/ikaros/unique/begin_twilight/library/common/ct 1t
# =================================================================================================
# ver 0.12.0
