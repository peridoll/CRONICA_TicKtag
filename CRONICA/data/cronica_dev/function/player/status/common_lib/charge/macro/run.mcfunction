# =================================================================================================

##【 IMPULSE 】

  ## 状態管理

    # スコア管理
      $scoreboard objectives add SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing dummy
      $scoreboard players add @s SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing 1
      $execute if score @s SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing matches 1 run \
        function cronica_dev:player/status/common_lib/charge/macro/calculation with storage cronica_dev:config $(Storage)
      $scoreboard players add @s SCORE.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType).Stack 1

    # タグ管理
      $tag @s remove TAG.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ed
      $tag @s add TAG.cronica_dev.$(TagCategory).$(ItemID).$(ChargeType)ing

  ## 特定処理実行

    # 特定処理呼び出し
      $data modify storage cronica_dev:config $(Storage).temp set value "run"
      $function cronica_dev:player/status/common_lib/charge/macro/activate_func with storage cronica_dev:config $(Storage)
# =================================================================================================
# ver 0.10.4
