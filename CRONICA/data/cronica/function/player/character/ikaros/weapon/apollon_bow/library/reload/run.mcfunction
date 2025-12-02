# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理

      # メインスコア作成
        scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reloading dummy
        scoreboard players add @s SCORE.cronica.WEAPON.apollon_bow.Reloading 1
        scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reload.Stack dummy
        scoreboard players add @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack 1

      # サブスコア作成
        execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reloading matches 1 run \
          function cronica:player/character/ikaros/weapon/apollon_bow/library/reload/calculation

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsSneaking
      tag @s remove TAG.cronica.WEAPON.apollon_bow.Reloaded
      tag @s add TAG.cronica.WEAPON.apollon_bow.Reloading

  ## 装飾

    # 通知
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reloading matches 1 run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/reload/progress

  ## 後続処理呼び出し

    # リロード進行処理
      execute unless entity @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 2..}] run \
        schedule function cronica:player/character/ikaros/weapon/apollon_bow/library/reload/main 1t
# =================================================================================================
# ver 0.13.0
