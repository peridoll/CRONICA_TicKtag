# =================================================================================================

##【 REPEAT 】

  ## プレイヤー管理

    # 移動禁止
      $execute as @s[tag = TAG.cronica.WEAPON.$(ItemID).Reloading] run effect give @s minecraft:slowness 1 4 true

  ## 後続処理呼び出し

    # 使用終了検知
      $execute as @s[tag = TAG.cronica.WEAPON.$(ItemID).Reloaded] run \
        function core:player/character/charge/reload/macro/cancel with storage cronica:config $(ItemID).CustomData.Reload
      $tag @s[scores = {SCORE.cronica.WEAPON.$(ItemID).Reloading = 0..}] add TAG.cronica.WEAPON.$(ItemID).Reloaded

    # 進捗処理
      $execute as @s[scores = {SCORE.cronica.WEAPON.$(ItemID).Reloading = 1..}] \
          if score @s SCORE.cronica.WEAPON.$(ItemID).Reload.Stack >= @s SCORE.cronica.WEAPON.$(ItemID).Reload.Stack.Goal \
        run \
          function core:player/character/charge/reload/macro/progress with storage cronica:config $(ItemID).CustomData.Reload

    # 完了処理
      $execute as @s[scores = {SCORE.cronica.WEAPON.$(ItemID).Reloading = 1..}] \
          if score @s SCORE.cronica.WEAPON.$(ItemID).Reloading >= @s SCORE.cronica.WEAPON.$(ItemID).Reload.Goal \
        run \
          function core:player/character/charge/reload/macro/complete with storage cronica:config $(ItemID).CustomData.Reload
# =================================================================================================
# ver 0.12.0
