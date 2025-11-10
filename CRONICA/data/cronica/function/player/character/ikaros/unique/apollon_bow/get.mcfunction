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
      function cronica:player/character/ikaros/unique/apollon_bow/config

  ## アイテム入手
    # MasterID/Type/ItemIDで一意に管理。get/macro/runでアイテムを付与

    # 太陽神の弓
      function cronica:player/character/common/get/macro/run \
        { \
          MasterID   : "ikaros", \
          MasterType : "unique", \
          ItemID     : "apollon_bow" \
        }

    # 太陽神の矢
      function cronica:player/character/common/get/macro/run \
        { \
          MasterID   : "ikaros", \
          MasterType : "unique", \
          ItemID     : "apollon_arrow" \
        }

  ## アイテムモデル変更
    # MODEスコア値に応じてモデルを切り替え

    # 基本形態
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 0 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_bow",   Model: "common/weapon/default"}
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches 0 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_arrow", Model: "common/weapon/ammo/arrow_default"}

    # 弾薬表示
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches -1 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_arrow", Model: "common/weapon/ammo/used"}

    # 黄昏
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 1 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_bow",   Model: "character/ikaros/unique/apollon_bow/twilight"}
      # execute if score @s SCORE.cronica.MODE.apollon_bow matches 1 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_arrow", Model: "character/ikaros/unique/apollon_bow/twilight"}
# =================================================================================================
# ver 0.11.1
