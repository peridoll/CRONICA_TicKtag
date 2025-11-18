# =================================================================================================

##【 IMPULSE 】

  ## アイテム置き換え

    # モードチェンジ
      scoreboard objectives add SCORE.cronica.MODE.apollon_bow dummy
      scoreboard players set @s SCORE.cronica.MODE.apollon_bow 1
      scoreboard objectives add SCORE.cronica.MODE.apollon_arrow dummy
      scoreboard players set @s SCORE.cronica.MODE.apollon_arrow 0
      function cronica:player/character/ikaros/weapon/apollon_bow/get

  ## 装飾

    # エフェクト
      # execute at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.01 5 force @s

    # サウンド
      # execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
# =================================================================================================
# ver 0.11.0
