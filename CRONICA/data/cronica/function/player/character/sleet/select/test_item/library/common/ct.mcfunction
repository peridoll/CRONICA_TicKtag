# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 基本処理呼び出し
      function core:player/character/activate/macro/ct/main { ItemID : "test_item" }

    # 再起処理
      execute if entity @a[scores = {SCORE.cronica.TIMER.test_item.CoolTime = 0..}] run \
        schedule function cronica:player/character/sleet/select/test_item/library/common/ct 1t
# =================================================================================================
# ver 0.12.0
