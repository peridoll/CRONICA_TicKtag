# =================================================================================================
# ユニークアイテムの入手とモデル切替を管理する汎用関数です。
# 初回取得時やリセット時に呼び出してください。
#
# 構成：
# 1. 準備（config読み込み）
# 2. アイテム入手（付与処理）
# 3. モデル変更（スコア値による見た目切替）

##【 IMPULSE 】

  ## 準備
    # configから各種設定値を取得

    # コンフィグ読み込み
      function cronica:player/character/ikaros/unique/begin_twilight/config

  ## アイテム入手
    # MasterID/Type/ItemIDで一意に管理。get/macro/runでアイテムを付与

    # 太陽神の弓
      function cronica:player/character/common/get/macro/run \
        { \
          MasterID   : "ikaros", \
          MasterType : "unique", \
          ItemID     : "begin_twilight" \
        }

  ## アイテムモデル変更
    # MODEスコア値に応じてモデルを切り替え

    # 基本形態
      execute if score @s SCORE.cronica.MODE.begin_twilight matches 0 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "begin_twilight",   Model: "common/weapon/default"}

    # 使用済み
      execute if score @s SCORE.cronica.MODE.begin_twilight matches -1 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "begin_twilight",   Model: "common/weapon/used"}

    # 使用不可
      execute if score @s SCORE.cronica.MODE.begin_twilight matches -2 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "begin_twilight",   Model: "common/weapon/ban"}
# =================================================================================================
# ver 0.11.1
