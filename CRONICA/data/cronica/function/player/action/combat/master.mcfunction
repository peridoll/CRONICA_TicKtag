# =================================================================================================

##【 TICK 】
# 毎ティック常時実行される

  ## 戦闘管理

    # 体力の増減を管理
      execute as @a[tag = TAG.cronica.GAMING] run function cronica:player/action/combat/health/check
      execute as @e[tag = TAG.cronica.MOB] run function cronica:player/action/combat/health/check
# =================================================================================================
# ver 0.13.0
