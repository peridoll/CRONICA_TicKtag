# =================================================================================================

##【 IMPULSE 】

  ## 後続処理管理

    # メイン処理呼び出し

      # $function cronica:player/character/common/activate/macro/activate_func \
          { \
            MasterID   : "$(MasterID)", \
            MasterType : "$(MasterType)", \
            ItemID     : "$(ItemID)", \
            Function   : "maine" \
          }
      # $schedule function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/maine 1t



  ## スコア管理

    # アイテムモード
      # $scoreboard objectives add SCORE.cronica.MODE.$(ItemID) dummy
      # $scoreboard players remove @s SCORE.cronica.MODE.$(ItemID) 1














    # # 実行時間
    #   $scoreboard objectives add SCORE.cronica.SKILL.$(ItemID).Activating dummy
    #   $scoreboard players set @s SCORE.cronica.SKILL.$(ItemID).Activating 0

    # # クールタイム
    #   #[実行値作成]
    #     $scoreboard objectives add SCORE.cronica.TIMER.$(ItemID).CoolTime dummy
    #     $scoreboard players set @s SCORE.cronica.TIMER.$(ItemID).CoolTime 0
    #   #[目標値作成]
    #     $scoreboard objectives add SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal dummy
    #   #[目標値設定取得]
    #     $scoreboard players operation @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal = #CONFIG.cronica.SKILL.$(ItemID).CoolTime SCORE.cronica.CONFIG
    #   #[目標値短縮]
    #     $scoreboard players set @s[tag=TAG.cronica.CT_ZERO] SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal 20
    #   #[積算値作成]
    #     $scoreboard objectives add SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack dummy
    #     $scoreboard players set @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack 0
    #   #[積算目標値作成]
    #     $scoreboard objectives add SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack.Goal dummy
    #     $scoreboard players operation @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack.Goal = @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal
    #     $scoreboard players operation @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack.Goal /= #20 SCORE.cronica.CONFIG

  ## アイテム置き換え

  #   # 使用済み形態取得
  #     $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/get

  # ## 後続処理管理

  #   # メイン処理、CT処理呼び出し
  #     $function cronica:player/character/common/activate/macro/activate_func \
  #       { \
  #         MasterID   : "$(MasterID)", \
  #         MasterType : "$(MasterType)", \
  #         ItemID     : "$(ItemID)", \
  #         Function   : "main" \
  #       }
  #     $schedule function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/ct 1t
# =================================================================================================
# ver 0.11.0
