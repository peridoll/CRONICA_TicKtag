# =================================================================================================

##【 IMPULSE 】

  ## 装飾

    # パーティクル
      execute at @e[tag = TAG.cronica.WEAPON.apollon_bow.Shoot.Spectrum.HitTarget] run \
        particle minecraft:flash{color:-13000} ~ ~1 ~ 0 0 0 0.5 1 force @a

  ## ダメージ

    # ダメージ処理
      execute as @s at @s run function cronica:player/action/combat/damage/macro/damage \
        { \
          "Attack": "@s", \
          "Defense": "@e[tag = TAG.cronica.WEAPON.apollon_bow.Shoot.Spectrum.HitTarget, limit = 1]", \
          "Amount": "14" \
        }

  ## データ管理

    # タグ消し

      # 命中対象
        tag @e[tag = TAG.cronica.WEAPON.apollon_bow.Shoot.Spectrum.HitTarget] remove TAG.cronica.WEAPON.apollon_bow.Shoot.Spectrum.HitTarget

    # スコアリセット
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Shoot.Spectrum.Stack
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Shoot.Spectrum.Stack = 1..}] run \
        scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Shoot.Spectrum.Stack
# =================================================================================================
# ver 0.13.0
