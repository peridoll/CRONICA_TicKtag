# =================================================================================================

##【 IMPULSE 】

  ## 特定処理実行

    # 特定処理呼び出し
      $data modify storage cronica_dev:config $(Storage).temp set value "reset"
      $function cronica_dev:player/status/common_lib/charge/macro/activate_func with storage cronica_dev:config $(Storage)

  ## 状態管理

    # タグ管理
      $tag @s remove TAG.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ed

    # スコア管理
      $scoreboard players reset @s SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing
      $execute unless entity @a[scores = {SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing
      $execute unless entity @a[scores = {SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType).Goal
      $execute unless entity @a[scores = {SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType).Stack
      $execute unless entity @a[scores = {SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType).Stack.Count
      $execute unless entity @a[scores = {SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType).Stack.Count.Goal
# =================================================================================================
# ver 0.10.4
