# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # 発射用スコア設置
      function cronica:player/character/ikaros/unique/apollon_bow/library/shoot/reset

  ## アイテム置き換え

    # モードチェンジ
      scoreboard players reset @s SCORE.cronica.MODE.apollon_bow
      function cronica:player/character/ikaros/unique/apollon_bow/get

  ## 装飾

    # エフェクト
      # execute at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.01 5 force @s

    # サウンド
      # execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
# =================================================================================================
# ver 0.11.0
