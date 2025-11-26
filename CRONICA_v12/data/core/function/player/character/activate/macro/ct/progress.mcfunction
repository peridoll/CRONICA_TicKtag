# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理

      # モード管理
        $execute if score @s SCORE.cronica.MODE.$(ItemID) matches -1 run scoreboard players set @s SCORE.cronica.MODE.$(ItemID) 99
        $scoreboard players add @s SCORE.cronica.MODE.$(ItemID) 1

      # スタックリセット
        $scoreboard players reset @s SCORE.cronica.CHARACTER.$(ItemID).CoolTime.Stack

  ## アイテム入手

    # 入手実施
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/get
# =================================================================================================
# ver 0.12.0
