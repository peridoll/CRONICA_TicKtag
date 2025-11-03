# =================================================================================================

##【 IMPULSE 】

  ## 状態管理

    # スコア管理
      $scoreboard objectives add SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing dummy
      $scoreboard players add @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing 1
      $scoreboard players add @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType).Stack 1

    # スコア計算
      $execute if score @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing matches 1 run \
        function cronica:player/character/common/charge/macro/calculation with storage cronica:config $(Storage)

    # タグ管理
      $tag @s remove TAG.cronica.$(TagCategory).$(ItemID).$(ChargeType)ed
      $tag @s add TAG.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing

  ## 装飾

    # 通知
      $execute if score @s SCORE.cronica.$(TagCategory).$(ItemID).$(ChargeType)ing matches 1 run \
        function cronica:player/character/common/charge/macro/progress_display with storage cronica:config $(Storage)

  ## 特定処理実行

    # 特定処理呼び出し
      $data modify storage cronica:config $(Storage).Function set value "run"
      $function cronica:player/character/common/charge/macro/activate_func with storage cronica:config $(Storage)

    # メイン処理実行
      $schedule function cronica:player/character/$(MasterID)/$(MasterID)/$(ItemID)/library/$(ChargeAddress)/main 1t
# =================================================================================================
# ver 0.11.0
