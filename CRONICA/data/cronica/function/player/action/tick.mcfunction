# =================================================================================================

##【 TICK 】
# 常時実行

  ## プレイヤー管理

    # 戦闘管理
      execute as @a[tag = TAG.cronica.GAMING] run function cronica:player/action/combat/master

    # 行動検知
      execute as @a[tag = TAG.cronica.GAMING] run function cronica:player/action/detect/master
# =================================================================================================
# ver 0.13.0
