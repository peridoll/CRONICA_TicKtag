# =================================================================================================

##【 DETECTION 】
# 行動検知

  ## 検知処理

    # タグ付け
      tag @s add TAG.cronica.STATUS.Combat.Attack
      tag @s add TAG.cronica.STATUS.Combat.Attack.AreaEffectCloud

    # 近接攻撃時
      function cronica:player/action/combat/damage/attack

    # タグ消し
      tag @s remove TAG.cronica.STATUS.Combat.Attack
      tag @s remove TAG.cronica.STATUS.Combat.Attack.AreaEffectCloud

    # 実績剥奪
      advancement revoke @s only cronica:status/attack/area_effect_cloud
# =================================================================================================
# ver 0.13.0
