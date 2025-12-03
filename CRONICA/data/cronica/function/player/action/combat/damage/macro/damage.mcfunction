# =================================================================================================

##【 IMPULSE 】

  ## 魔法属性ダメージ

    # ダメージ処理
      $execute as $(Attack) at @s run damage $(Defense) $(Amount) minecraft:magic

    # 攻撃時処理
      tag @s add TAG.cronica.STATUS.Combat.Attack
      tag @s add TAG.cronica.STATUS.Combat.Attack.Magic
      function cronica:player/action/combat/damage/attack
      tag @s remove TAG.cronica.STATUS.Combat.Attack.Magic
      tag @s remove TAG.cronica.STATUS.Combat.Attack
# =================================================================================================
# ver 0.13.0
