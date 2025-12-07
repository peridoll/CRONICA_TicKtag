# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 基本処理呼び出し
      function cronica:player/inventory/recast/macro/main { ItemID : "flying_feather" }

    # 再起処理
      execute unless entity @a run scoreboard objectives add SCORE.cronica.SKILL.flying_feather.RecastTime dummy
      execute if entity @a[scores = {SCORE.cronica.SKILL.flying_feather.RecastTime = 0..}] run \
        schedule function cronica:player/character/ikaros/select/flying_feather/library/recast 1t
# =================================================================================================
# ver 0.13.0
