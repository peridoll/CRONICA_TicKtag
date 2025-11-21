# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 基本処理呼び出し
      function core:player/character/activate/macro/ct/main { ItemID : "warp_hole" }

    # 再起処理
      execute if entity @a[scores = {SCORE.cronica.CHARACTER.warp_hole.CoolTime = -1..}] run \
        schedule function cronica:player/character/deliverdy/select/warp_hole/library/common/ct 1t
# =================================================================================================
# ver 0.12.0
