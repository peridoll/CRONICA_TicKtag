# =================================================================================================

##【 IMPULSE 】

  ## 素体召喚

    # スケルトン召喚
      summon minecraft:skeleton ~ ~ ~ \
        { \
          NoAI: true, \
          Tags : [ \
            TAG.cronica.TOTEM, \
            TAG.cronica.MOB, \
            TAG.cronica.ENEMY, \
            TAG.cronica.ENEMY.skeleton, \
            TAG.cronica.ENEMY.skeleton.melee, \
            TAG.cronica.ENEMY.skeleton.empty \
          ] \
        }

  ## 組織化：アンデット

    # スケルトン素体を敵組織化
      effect give @e[tag = TAG.cronica.ENEMY.skeleton.empty] minecraft:health_boost infinite 19 true
      effect give @e[tag = TAG.cronica.ENEMY.skeleton.empty] minecraft:instant_damage infinite 10 true

    # 装備付与：素手
      item replace entity @e[tag = TAG.cronica.ENEMY.skeleton.empty] armor.head with glass

    # チーム編成
      team join B @e[tag = TAG.cronica.ENEMY.skeleton.empty]



  ## データ管理

    # タグ削除
      tag @e[tag = TAG.cronica.ENEMY.skeleton.empty] remove TAG.cronica.ENEMY.skeleton.empty
# =================================================================================================
# ver 0.13.0
