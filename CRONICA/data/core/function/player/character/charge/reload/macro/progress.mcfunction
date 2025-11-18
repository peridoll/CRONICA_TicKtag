# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # 進行度カウントリセット＆加算
      $scoreboard players reset @s SCORE.cronica.WEAPON.$(ItemID).Reload.Stack
      $scoreboard players add @s SCORE.cronica.WEAPON.$(ItemID).Reload.Stack.Count 1

  ## 画面表示

    # 進行度表示呼び出し
      $function core:player/character/charge/reload/macro/progress_display with storage cronica:config $(ItemID).CustomData.Reload
# =================================================================================================
# ver 0.11.0
