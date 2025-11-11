# =================================================================================================

##【 IMPULSE FREE 】
# 通常実行、手動実行可能

  ## 基本動作

    # アイテム入手
      function cronica_lib:player/character/get/macro/get \
        { \
          MasterType : "unique", \
          MasterID   : "ikaros", \
          ItemID     : "begin_twilight" \
        }

  ## 状態変化

    # 基本形態
      execute if score @s SCORE.cronica.MODE.begin_twilight matches 0 run \
        function cronica_lib:player/character/get/macro/mode_change { ItemID: "begin_twilight", Model: "common/skill/default" }

    # 使用済み
      execute if score @s SCORE.cronica.MODE.begin_twilight matches -1 run \
        function cronica_lib:player/character/get/macro/mode_change { ItemID: "begin_twilight", Model: "common/skill/used" }

    # 使用不可
      execute if score @s SCORE.cronica.MODE.begin_twilight matches -2 run \
        function cronica_lib:player/character/get/macro/mode_change { ItemID: "begin_twilight", Model: "common/skill/ban" }
# =================================================================================================
# ver 0.12.0
