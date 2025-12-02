# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア作成
      scoreboard objectives add SCORE.cronica.WORLD.Gimmick.Panel.lime_jump.ActivateTime dummy
      scoreboard players add @s SCORE.cronica.WORLD.Gimmick.Panel.lime_jump.ActivateTime 0

  ## プレイヤー管理

    # エフェクト付与
    effect give @s minecraft:levitation 1 27 true

  ## 後続処理呼び出し

    # ループ処理
      schedule function cronica:world/gimmick/panel/lime_jump/main 1t
# =================================================================================================
# ver 0.13.0
