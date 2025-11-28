# =================================================================================================

##【 TICK 】
# 毎ティック常時実行される

  ## プレイヤー管理

    # 行動検知
      execute if entity @a run function cronica:player/detection/master

    # ステータス管理
      execute if entity @a run function cronica:player/status/tick
# =================================================================================================
# ver 0.13.0
