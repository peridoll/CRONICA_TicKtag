# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 基本処理呼び出し
      function core:player/character/activate/macro/ct/main { ItemID : "blazing_shield" }

    # 再起処理
      execute if entity @a[scores = {SCORE.cronica.CHARACTER.blazing_shield.CoolTime = -1..}] run \
        schedule function cronica:player/character/ikaros/select/blazing_shield/library/common/ct 1t
# =================================================================================================
# ver 0.12.0
