# =================================================================================================

##【 IMPULSE 】

  ## 後続処理呼び出し

    # 段数確認
      scoreboard objectives add SCORE.cronica.SKILL.blazing_shield.Stack dummy
      execute if score @s SCORE.cronica.CHARACTER.blazing_shield.charge.Stack matches ..10 run \
        scoreboard players operation @s SCORE.cronica.SKILL.blazing_shield.Stack = @s SCORE.cronica.CHARACTER.blazing_shield.charge.Stack
      execute if score @s SCORE.cronica.CHARACTER.blazing_shield.charge.Stack matches ..10 run \
        scoreboard players operation @s SCORE.cronica.SKILL.blazing_shield.Stack /= #2 SCORE.cronica.CONFIG

  ## 装飾

    # パーティクル
      # particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.05 30 force

    # サウンド
      # playsound minecraft:block.beacon.activate player @a ~ ~ ~ 2 1
# =================================================================================================
# ver 0.12.0
