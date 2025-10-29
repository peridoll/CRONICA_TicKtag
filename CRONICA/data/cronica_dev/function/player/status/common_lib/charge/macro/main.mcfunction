# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 使用終了検知
      $execute if entity @s[tag = TAG.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ed] run \
        function cronica_dev:player/status/common_lib/charge/macro/cancel with storage cronica_dev:config $(Storage)
      $tag @s[scores = {SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing = 0..}] add TAG.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ed

    # 進捗処理
      $execute if score @s SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing matches 1 run \
        function cronica_dev:player/status/common_lib/charge/macro/progress_display with storage cronica_dev:config $(Storage)
      $execute \
          if score @s SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType).Stack >= @s SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType).Stack.Goal \
        run \
          function cronica_dev:player/status/common_lib/charge/macro/progress with storage cronica_dev:config $(Storage)

    # 完了処理
      $execute \
          if score @s SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing >= @s SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType).Goal \
        run \
          function cronica_dev:player/status/common_lib/charge/macro/complete with storage cronica_dev:config $(Storage)

  ## 特定処理実行

    # 特定処理呼び出し
      $data modify storage cronica_dev:config $(Storage).temp set value "main"
      $function cronica_dev:player/status/common_lib/charge/macro/activate_func with storage cronica_dev:config $(Storage)
# =================================================================================================
# ver 0.10.4
