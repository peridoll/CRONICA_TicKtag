# =================================================================================================

##【 IMPULSE 】

  ## 素体召喚

    # スケルトン召喚
      tag @s add TAG.cronica.MOB
      tag @s add TAG.cronica.ENEMY
      tag @s add TAG.cronica.ENEMY.skeleton
      tag @s add TAG.cronica.ENEMY.skeleton.bow



  ## 組織化：アンデット

    # スケルトン素体を敵組織化
      effect give @s minecraft:health_boost infinite 19 true
      effect give @s minecraft:instant_damage 1 10 true

    # 装備付与：弓
      item replace entity @s armor.head with glass
      item replace entity @s weapon.mainhand with bow

    # チーム編成
      team join B @s
# =================================================================================================
# ver 0.13.0
