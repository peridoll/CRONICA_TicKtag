# =================================================================================================

##【 IMPULSE SYSTEM 】
# 通常実行、手動実行不可

  ## データ管理

    # スコア管理

      # アイテムモード
        scoreboard players reset @s SCORE.cronica.MODE.begin_twilight
        function cronica:player/character/ikaros/unique/begin_twilight/get

      # アクティベート
        function cronica:player/character/ikaros/unique/begin_twilight/library/activate/reset

      # リキャスト
        function cronica:player/inventory/recast/macro/reset {ItemID : "begin_twilight" }
# =================================================================================================
# ver 0.13.0
