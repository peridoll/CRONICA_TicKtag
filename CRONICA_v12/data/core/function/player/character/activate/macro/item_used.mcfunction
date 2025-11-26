# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理

      # アイテムモード
        $scoreboard objectives add SCORE.cronica.MODE.$(ItemID) dummy
        $scoreboard players remove @s SCORE.cronica.MODE.$(ItemID) 1

  ## アイテム置き換え

    # 各キャラクターのゲットを呼び出し
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/get
# =================================================================================================
# ver 0.12.0
