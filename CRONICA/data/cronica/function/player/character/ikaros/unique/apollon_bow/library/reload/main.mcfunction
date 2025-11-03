# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 使用終了検知
      execute as @a[tag = TAG.cronica.WEAPON.apollon_bow.Reloaded] run \
        function cronica:player/character/common/charge/macro/cancel with storage cronica:config ApollonBowReload
      tag @s[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..}] add TAG.cronica.WEAPON.apollon_bow.Reloaded

    # 進捗処理
      execute as @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 1..}] \
          if score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack >= @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Goal \
        run \
          function cronica:player/character/common/charge/macro/progress with storage cronica:config ApollonBowReload

    # 完了処理
      execute as @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 1..}] \
          if score @s SCORE.cronica.WEAPON.apollon_bow.Reloading >= @s SCORE.cronica.WEAPON.apollon_bow.Reload.Goal \
        run \
          function cronica:player/character/common/charge/macro/complete with storage cronica:config ApollonBowReload

    # 再起処理
      execute if entity @a[tag = TAG.cronica.WEAPON.apollon_bow.Reloading] run \
        schedule function cronica:player/character/ikaros/unique/apollon_bow/library/reload/main 1t
# =================================================================================================
# ver 0.11.0
