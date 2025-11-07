# =================================================================================================

##【 IMPULSE 】

  ## 準備

    # コンフィグ読み込み
      function cronica:player/character/ikaros/select/flying_feather/config

  ## アイテム入手

    # 太陽神の弓
      function cronica:player/character/common/get/macro/run \
        { \
          MasterID     : "ikaros", \
          MasterType   : "select", \
          ItemID       : "flying_feather" \
        }

  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica.MODE.flying_feather matches 0 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "flying_feather", Model: "common/default"}

    # 使用済み
      execute if score @s SCORE.cronica.MODE.flying_feather matches -1 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "flying_feather", Model: "common/used"}

    # 使用不可
      execute if score @s SCORE.cronica.MODE.flying_feather matches -2 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "flying_feather", Model: "common/ban"}
# =================================================================================================
# ver 0.11.0
