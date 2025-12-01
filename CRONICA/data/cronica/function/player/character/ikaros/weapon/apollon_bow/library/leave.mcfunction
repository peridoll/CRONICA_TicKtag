# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.INVENTORY.apollon_bow.HasCheck.FreeDetect

    # スコア管理

      # アイテムモード
        scoreboard players reset @s SCORE.cronica.MODE.apollon_bow
        function cronica:player/character/ikaros/weapon/apollon_bow/get
# =================================================================================================
# ver 0.13.0

execute unless entity @a run scoreboard objectives add SCORE.cronica.MODE.apollon_bow dummy
