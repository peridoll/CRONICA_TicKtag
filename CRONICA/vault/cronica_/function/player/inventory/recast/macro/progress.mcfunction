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

    # アイテムゲット
      # $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/get/
    # アイテムモデル更新
      $function cronica:player/inventory/get/macro/library/charging_model {ItemID : "$(ItemID)"}
# =================================================================================================
# ver 0.13.0
