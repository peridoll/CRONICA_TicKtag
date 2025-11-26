# =================================================================================================

##【 IMPULSE 】

  ## 状態管理

    # スコア管理
      $scoreboard objectives add SCORE.cronica.WEAPON.$(ItemID).Reloading dummy
      $scoreboard players add @s SCORE.cronica.WEAPON.$(ItemID).Reloading 1
      $scoreboard players add @s SCORE.cronica.WEAPON.$(ItemID).Reload.Stack 1

    # スコア計算
      $execute if score @s SCORE.cronica.WEAPON.$(ItemID).Reloading matches 1 run \
        function core:player/character/charge/reload/macro/calculation with storage cronica:config $(ItemID).CustomData.Reload

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsSneaking
      $tag @s remove TAG.cronica.WEAPON.$(ItemID).Reloaded
      $tag @s add TAG.cronica.WEAPON.$(ItemID).Reloading

  ## 装飾

    # 通知
      $execute if score @s SCORE.cronica.WEAPON.$(ItemID).Reloading matches 1 run \
        function core:player/character/charge/reload/macro/progress_display with storage cronica:config $(ItemID).CustomData.Reload
# =================================================================================================
# ver 0.12.0
