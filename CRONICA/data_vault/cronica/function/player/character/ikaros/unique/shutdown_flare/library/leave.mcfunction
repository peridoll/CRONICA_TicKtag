# =================================================================================================

##【 DEV CREATE 】

  ## スコア管理

    # BeginTwilight:ItemMode
      scoreboard objectives add SCORE.cronica.MODE.shutdown_flare dummy

##【 IMPULSE 】

  ## プレイヤー管理

    # 移動速度軽減解除
    # TODO: 実装予定

  ## スコア管理

    # ItemMode
      scoreboard players reset @s SCORE.cronica.MODE.shutdown_flare
      execute unless entity @a[scores = {SCORE.cronica.MODE.shutdown_flare = -99..}] run scoreboard objectives remove SCORE.cronica.MODE.shutdown_flare
# =================================================================================================
# ver 0.11.0
