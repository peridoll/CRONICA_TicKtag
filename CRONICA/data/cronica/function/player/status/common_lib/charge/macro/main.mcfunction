# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 使用終了検知
      $execute if entity @s[tag = TAG.cronica.$(TagCategory).$(ItemID).$(ChargeType)ed] run \
        function cronica:player/status/common_lib/charge/macro/cancel with storage cronica:config $(Storage)
      $tag @s[scores = {SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] add TAG.cronica.$(TagCategory).$(ItemID).$(ChargeType)ed

    # 進捗処理
      $execute if score @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing matches 1 run \
        function cronica:player/status/common_lib/charge/macro/progress_display with storage cronica:config $(Storage)
      $execute \
          if score @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack >= @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack.Goal \
        run \
          function cronica:player/status/common_lib/charge/macro/progress with storage cronica:config $(Storage)

    # 完了処理
      $execute \
          if score @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing >= @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Goal \
        run \
          function cronica:player/status/common_lib/charge/macro/complete with storage cronica:config $(Storage)

  ## 特定処理実行

    # 特定処理呼び出し
      $data modify storage cronica:config $(Storage).temp set value "main"
      $function cronica:player/status/common_lib/charge/macro/activate_func with storage cronica:config $(Storage)
# =================================================================================================
# ver 0.10.4
