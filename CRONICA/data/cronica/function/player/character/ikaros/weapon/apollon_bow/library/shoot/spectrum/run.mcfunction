# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア作成
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Shoot.Spectrum.Stack dummy

  ## エンティティ管理

    # 矢削除
      execute at @s run kill @e[type = arrow, sort = nearest, limit = 1, distance = ..5]

  ## 後続処理呼び出し

    # ビーム
      execute at @s run function cronica:player/character/ikaros/weapon/apollon_bow/library/shoot/spectrum/beam

  ## データ管理

    # スコア削除
      scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Shoot.Spectrum.Stack

    # タグ消し
      function cronica:player/character/ikaros/unique/begin_twilight/library/activate/reset
# =================================================================================================
# ver 0.13.0
