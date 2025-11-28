# =================================================================================================

##【 MACRO IMPULSE 】
# 手動実行不可, 単数実行

  ## データ管理

    # スコア管理

      # 経過時間作成
        $scoreboard objectives add SCORE.cronica.CHARACTER.$(ItemID).RecastTime dummy
        $scoreboard players set @s SCORE.cronica.CHARACTER.$(ItemID).RecastTime 0

      # 到達目標値作成
        $scoreboard objectives add SCORE.cronica.CHARACTER.$(ItemID).Recast.Goal dummy

      # 到達目標値コンフィグ読み込み
        $execute store result score @s SCORE.cronica.CHARACTER.$(ItemID).Recast.Goal run data get storage cronica:config $(ItemID).CustomData.RecastTime

      # 到達目標値特別措置

        # ハンデ戦
          $scoreboard players operation @s[tag=TAG.cronica.CT_HANDICAP] SCORE.cronica.CHARACTER.$(ItemID).Recast.Goal /= #2 SCORE.cronica.CONFIG

        # 開発用CT無し
          $scoreboard players set @s[tag=TAG.cronica.CT_ZERO] SCORE.cronica.CHARACTER.$(ItemID).Recast.Goal 20

        # 未設定 / 規定値以下
          $execute unless score @s SCORE.cronica.CHARACTER.$(ItemID).Recast.Goal matches 20.. run scoreboard players set @s SCORE.cronica.CHARACTER.$(ItemID).Recast.Goal 20

      # 過程到達積算値作成
        $scoreboard objectives add SCORE.cronica.CHARACTER.$(ItemID).Recast.Stack dummy
        $scoreboard players set @s SCORE.cronica.CHARACTER.$(ItemID).Recast.Stack 0

      # 過程到達目標値作成
        $scoreboard objectives add SCORE.cronica.CHARACTER.$(ItemID).Recast.Stack.Goal dummy
        $scoreboard players operation @s SCORE.cronica.CHARACTER.$(ItemID).Recast.Stack.Goal = @s SCORE.cronica.CHARACTER.$(ItemID).Recast.Goal
        $scoreboard players operation @s SCORE.cronica.CHARACTER.$(ItemID).Recast.Stack.Goal /= #20 SCORE.cronica.CONFIG

    # ストレージ管理

      # キャラクターデータ取得
        $function cronica:system/data/storage/character/macro/get {StorageName: "RecastRun", ItemID: "$(ItemID)"}

  ## 後続処理管理

    # CT処理呼び出し
      function cronica:player/inventory/recast/macro/run_lib with storage cronica:temp RecastRun
# =================================================================================================
# ver 0.13.0
