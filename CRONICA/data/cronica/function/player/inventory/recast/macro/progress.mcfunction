# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理

      # モード管理
        $execute if score @s SCORE.cronica.MODE.$(ItemID) matches -2..-1 run scoreboard players set @s SCORE.cronica.MODE.$(ItemID) -99
        $scoreboard players remove @s SCORE.cronica.MODE.$(ItemID) 1

      # スタックリセット
        $scoreboard players reset @s SCORE.cronica.SKILL.$(ItemID).Recast.Stack

  ## アイテム入手

    # 入手実施
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/get
# =================================================================================================
# ver 0.13.0
