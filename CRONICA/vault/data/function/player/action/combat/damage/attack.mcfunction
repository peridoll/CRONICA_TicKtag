# =================================================================================================

##【 MACRO IMPULSE 】

  ## 対象者確認

    # プレイヤー to エンティティ
      # 攻撃者がプレイヤー、被攻撃者が不明(エンティティ)の場合の時
      # エンティティが実績判定できないため、その瞬間にダメージを受けているものを対象とする

      # 体力チェック
        execute as @e[tag = TAG.cronica.MOB, tag =! TAG.cronica.STATUS.GetDamage, tag =! TAG.cronica.STATUS.Combat.Defense.Activated] run \
          function cronica:player/action/combat/health/check

      # 防御時処理
        execute as @e[tag = TAG.cronica.MOB, tag = TAG.cronica.STATUS.GetDamage, limit = 1] run \
          tag @s add TAG.cronica.STATUS.Combat.Defense.Activating
        execute as @e[tag = TAG.cronica.STATUS.Combat.Defense.Activating] run \
          function cronica:player/action/combat/damage/defense



  ## 攻撃判定



  ## 装飾

    # 体力減少通知
      function cronica:player/action/combat/damage/health_indicator






  ## データ管理

    # タグ消し
      tag @e[tag = TAG.cronica.STATUS.Combat.Defense.Activating] add TAG.cronica.STATUS.Combat.Defense.Activated
      tag @e[tag = TAG.cronica.STATUS.Combat.Defense.Activating] remove TAG.cronica.STATUS.GetDamage
      tag @e[tag = TAG.cronica.STATUS.Combat.Defense.Activating] remove TAG.cronica.STATUS.Combat.Defense
      tag @e[tag = TAG.cronica.STATUS.Combat.Defense.Activating] remove TAG.cronica.STATUS.Combat.Defense.Activating
# =================================================================================================
# ver 0.13.0

# say attack
