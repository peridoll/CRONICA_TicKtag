# =================================================================================================

##【 IMPULSE 】

  ## 状態管理

    # スコア管理
      $scoreboard objectives add SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType)ing dummy
      $scoreboard players add @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType)ing 1
      $scoreboard players add @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType).Stack 1

    # スコア計算
      $execute if score @s SCORE.cronica.CHARACTER.$(ItemID).$(ChargeType)ing matches 1 run \
        function core:player/character/charge/macro/calculation with storage cronica:config $(ItemID).CustomData.$(ChargeType)

    # タグ管理
      $tag @s remove TAG.cronica.CHARACTER.$(ItemID).$(ChargeType)ed
      $tag @s add TAG.cronica.CHARACTER.$(ItemID).$(ChargeType)ing

  ## 特定処理実行

    # 特定処理呼び出し
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/$(ChargeType)/run

    # メイン処理実行
      $schedule function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/$(ChargeType)/main 1t
# =================================================================================================
# ver 0.12.0
