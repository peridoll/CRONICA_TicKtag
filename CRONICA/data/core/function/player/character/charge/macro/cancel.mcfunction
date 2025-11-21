# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理
      scoreboard players reset @s SCORE.cronica.SKILL.judgment_stone.Stack
      execute unless entity @a[scores = {SCORE.cronica.SKILL.judgment_stone.Stack = 1..}] run \
        scoreboard objectives remove SCORE.cronica.SKILL.judgment_stone.Stack

  ## 特定処理実行

    # 特定処理呼び出し
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/$(ChargeType)/cancel

  ## 後続処理

    # スコアリセット
      $function core:player/character/charge/macro/reset with storage cronica:config $(ItemID).CustomData.$(ChargeType)
# =================================================================================================
# ver 0.12.0
