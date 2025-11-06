# =================================================================================================

##【 IMPULSE 】

  ## 特定処理実行

    # 特定処理呼び出し
      $data modify storage cronica:config $(Storage).Function set value "reset"
      $function cronica:player/character/common/charge/macro/activate_func with storage cronica:config $(Storage)

  ## 状態管理

    # タグ管理
      $tag @s remove TAG.cronica.$(TagCategory).$(ItemID).$(ChargeType)ed

    # スコア管理
      $scoreboard players reset @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing
      $execute unless entity @a[scores = {SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing
      $execute unless entity @a[scores = {SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Goal
      $execute unless entity @a[scores = {SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack
      $execute unless entity @a[scores = {SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack.Count
      $execute unless entity @a[scores = {SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] run scoreboard objectives remove SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack.Goal
# =================================================================================================
# ver 0.11.0
