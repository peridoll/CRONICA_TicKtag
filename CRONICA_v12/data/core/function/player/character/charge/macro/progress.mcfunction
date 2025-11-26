# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # 進行度カウントリセット＆加算
      $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack
      $scoreboard players add @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack.Count 1

  ## 特定処理実行

    # 特定処理呼び出し
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/$(ChargeType)/progress
# =================================================================================================
# ver 0.12.0
