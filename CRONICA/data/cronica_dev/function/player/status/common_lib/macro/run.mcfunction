# =================================================================================================

## スコア管理

  # コンフィグ読み込み
    $function cronica_dev:player/character/$(MasterID)/config

  # アイテムモード
    $scoreboard objectives add SCORE.cronica_dev.MODE.$(ItemID) dummy
    $scoreboard players remove @s SCORE.cronica_dev.MODE.$(ItemID) 1

  # 実行時間
    $scoreboard objectives add SCORE.cronica_dev.TIMER.$(ItemID).ActivateTime dummy
    $scoreboard players set @s SCORE.cronica_dev.TIMER.$(ItemID).ActivateTime 0

  # クールタイム
    #[実行値作成]
      $scoreboard objectives add SCORE.cronica_dev.TIMER.$(ItemID).CoolTime dummy
      $scoreboard players set @s SCORE.cronica_dev.TIMER.$(ItemID).CoolTime 0
    #[目標値作成]
      $scoreboard objectives add SCORE.cronica_dev.TIMER.$(ItemID).CoolTime.Goal dummy
    #[目標値設定取得]
      $scoreboard players operation @s SCORE.cronica_dev.TIMER.$(ItemID).CoolTime.Goal = #CONFIG.cronica_dev.SKILL.$(ItemID).CoolTime SCORE.cronica_dev.CONFIG
    #[目標値短縮]
      $scoreboard players set @s[tag=TAG.cronica_dev.CT_ZERO] SCORE.cronica_dev.TIMER.$(ItemID).CoolTime.Goal 20
    #[積算値作成]
      $scoreboard objectives add SCORE.cronica_dev.TIMER.$(ItemID).CoolTime.Stack dummy
      $scoreboard players set @s SCORE.cronica_dev.TIMER.$(ItemID).CoolTime.Stack 0
    #[積算目標値作成]
      $scoreboard objectives add SCORE.cronica_dev.TIMER.$(ItemID).CoolTime.Stack.Goal dummy
      $scoreboard players operation @s SCORE.cronica_dev.TIMER.$(ItemID).CoolTime.Stack.Goal = @s SCORE.cronica_dev.TIMER.$(ItemID).CoolTime.Goal
      $scoreboard players operation @s SCORE.cronica_dev.TIMER.$(ItemID).CoolTime.Stack.Goal /= #20 SCORE.cronica_dev.CONFIG

## アイテム置き換え
    $function cronica_dev:player/character/$(MasterID)/$(MasterType)/$(ItemID)/get

## メイン処理、CT処理呼び出し
    $schedule function cronica_dev:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/main 1t
    $schedule function cronica_dev:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/ct 1t
# =================================================================================================
