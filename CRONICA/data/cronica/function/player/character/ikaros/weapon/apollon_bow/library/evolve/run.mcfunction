# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理

      # メインスコア作成
        scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Evolving dummy
        scoreboard players add @s SCORE.cronica.WEAPON.apollon_bow.Evolving 1

      # サブスコア作成
        execute if score @s SCORE.cronica.WEAPON.apollon_bow.Evolving matches 1 run \
          function cronica:player/character/ikaros/weapon/apollon_bow/library/evolve/calculation

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsSneaking
      tag @s remove TAG.cronica.WEAPON.apollon_bow.Evolved
      tag @s add TAG.cronica.WEAPON.apollon_bow.Evolving

  ## 後続処理呼び出し

    # リロード進行処理
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Evolving = 2..}] run \
        schedule function cronica:player/character/ikaros/weapon/apollon_bow/library/evolve/main 1t
# =================================================================================================
# ver 0.13.0
