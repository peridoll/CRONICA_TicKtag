# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 基本処理呼び出し
      function core:player/character/activate/macro/ct/main { ItemID : "spinning_slash" }

    # 再起処理
      execute if entity @a[scores = {SCORE.cronica.CHARACTER.spinning_slash.CoolTime = -1..}] run \
        schedule function cronica:player/character/brave/select/spinning_slash/library/common/ct 1t
# =================================================================================================
# ver 0.12.0
