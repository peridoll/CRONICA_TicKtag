# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理

      # 経過時間作成
        $scoreboard objectives add SCORE.cronica.TIMER.$(ItemID).CoolTime dummy
        $scoreboard players set @s SCORE.cronica.TIMER.$(ItemID).CoolTime 0

      # 到達目標値作成
        $scoreboard objectives add SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal dummy

      # 到達目標値コンフィグ読み込み
        $execute store result score @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal run data get storage cronica:config $(ItemID).CustomData.CoolTime

      # 到達目標値特別措置

        # ハンデ戦
          $scoreboard players operation @s[tag=TAG.cronica.CT_HANDICAP] SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal /= #2 SCORE.cronica.CONFIG

        # 開発用CT無し
          $scoreboard players set @s[tag=TAG.cronica.CT_ZERO] SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal 20

        # 未設定 / 規定値以下
          $execute unless score @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal matches 20.. run scoreboard players set @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal 20

      # 過程到達積算値作成
        $scoreboard objectives add SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack dummy
        $scoreboard players set @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack 0

      # 過程到達目標値作成
        $scoreboard objectives add SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack.Goal dummy
        $scoreboard players operation @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack.Goal = @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal
        $scoreboard players operation @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack.Goal /= #20 SCORE.cronica.CONFIG

  ## 後続処理管理

    # メイン処理、CT処理呼び出し
      $schedule function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/common/ct 1t
# =================================================================================================
# ver 0.12.0
