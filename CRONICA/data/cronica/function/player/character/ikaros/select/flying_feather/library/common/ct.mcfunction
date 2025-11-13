# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 基本処理呼び出し
      function core:player/character/activate/macro/ct/main { ItemID : "flying_feather" }

    # 再起処理
      execute if entity @a[scores = {SCORE.cronica.TIMER.flying_feather.CoolTime = 0..}] run \
        schedule function cronica:player/character/ikaros/select/flying_feather/library/common/ct 1t
# =================================================================================================
# ver 0.12.0
