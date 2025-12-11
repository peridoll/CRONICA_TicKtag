# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア増加
      scoreboard players add @s SCORE.cronica.WEAPON.apollon_bow.Shoot.Spectrum.Stack 1

    # タグ付与

      # 本人
        tag @s add TAG.cronica.WEAPON.apollon_bow.Shoot.Spectrum.NoTarget

      # チームメイト / 召喚物



  ## 装飾

    # パーティクル
      particle minecraft:flame ^ ^1.5 ^ 0.1 0.1 0.1 0 15 force @a
      particle minecraft:end_rod ^ ^1.5 ^ 0.1 0.1 0.1 0 3 force @a



  ## 衝突判定

    # エンティティ処理
      execute positioned ^ ^ ^0.5 run \
        tag @e[tag =! TAG.cronica.WEAPON.apollon_bow.Shoot.Spectrum.NoTarget, distance = ..1] add TAG.cronica.WEAPON.apollon_bow.Shoot.Spectrum.HitTarget
      execute positioned ^ ^1 ^0.5 run \
        tag @e[tag =! TAG.cronica.WEAPON.apollon_bow.Shoot.Spectrum.NoTarget, distance = ..1] add TAG.cronica.WEAPON.apollon_bow.Shoot.Spectrum.HitTarget
      execute if entity @e[tag = TAG.cronica.WEAPON.apollon_bow.Shoot.Spectrum.HitTarget] run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/shoot/spectrum/hit

    # ブロック処理
      execute unless block ^ ^1.5 ^0.5 #cronica:no_collision_light run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/shoot/spectrum/no_hit

  ## 後続処理呼び出し

    # 最大実行距離
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Shoot.Spectrum.Stack matches 100.. run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/shoot/spectrum/no_hit

    # 再起処理
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Shoot.Spectrum.Stack matches 0.. positioned ^ ^ ^0.5 run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/shoot/spectrum/beam

  ## データ管理

    # タグ消し
      tag @s remove TAG.cronica.WEAPON.apollon_bow.Shoot.Spectrum.NoTarget
# =================================================================================================
# ver 0.12.0
