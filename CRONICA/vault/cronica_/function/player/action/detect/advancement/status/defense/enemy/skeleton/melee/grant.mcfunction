# =================================================================================================

##【 DETECTION 】
# 行動検知

  ## 検知処理

    # タグ付け
      # tag @s add TAG.cronica.STATUS.Combat.Defense.Skeleton

    # スケルトンダメージ時
      #function cronica:player/action/combat/defense

    # 実績剥奪
      advancement revoke @s only cronica:status/defense/enemy/skeleton/melee
# =================================================================================================
# ver 0.13.0

say skeleton melee
