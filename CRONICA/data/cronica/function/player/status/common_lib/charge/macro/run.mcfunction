# =================================================================================================

##【 IMPULSE 】

  ## 状態管理

    # スコア管理
      $scoreboard objectives add SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing dummy
      $scoreboard players add @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing 1
      $execute if score @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing matches 1 run \
        function cronica:player/status/common_lib/charge/macro/calculation with storage cronica:config $(Storage)
      $scoreboard players add @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack 1

    # タグ管理
      $tag @s remove TAG.cronica.$(TagCategory).$(ItemID).$(ChargeType)ed
      $tag @s add TAG.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing

  ## 特定処理実行

    # 特定処理呼び出し
      $data modify storage cronica:config $(Storage).temp set value "run"
      $function cronica:player/status/common_lib/charge/macro/activate_func with storage cronica:config $(Storage)
# =================================================================================================
# ver 0.10.4
