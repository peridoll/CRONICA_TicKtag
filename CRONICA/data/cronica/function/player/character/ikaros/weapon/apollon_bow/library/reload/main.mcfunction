# =================================================================================================

##【 REPEAT 】

  ## プレイヤー管理

    # 移動禁止
      effect give @a[tag = TAG.cronica.WEAPON.apollon_bow.Reloading] minecraft:slowness 1 4 true

  ## 後続処理呼び出し

    # 使用終了検知
      execute as @a[tag = TAG.cronica.WEAPON.apollon_bow.Reloaded] run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/reload/cancel
      tag @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..}] add TAG.cronica.WEAPON.apollon_bow.Reloaded

    # 進捗処理
      execute as @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 1..}] \
          if score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack >= @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Goal \
        run \
          function cronica:player/character/ikaros/weapon/apollon_bow/library/reload/progress

    # 完了処理
      execute as @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 1..}] \
          if score @s SCORE.cronica.WEAPON.apollon_bow.Reloading >= @s SCORE.cronica.WEAPON.apollon_bow.Reload.Goal \
        run \
          function cronica:player/character/ikaros/weapon/apollon_bow/library/reload/complete

    # 再起処理
      execute if entity @a[tag = TAG.cronica.WEAPON.apollon_bow.Reloading] run \
        schedule function cronica:player/character/ikaros/weapon/apollon_bow/library/reload/main 1t
# =================================================================================================
# ver 0.13.0
