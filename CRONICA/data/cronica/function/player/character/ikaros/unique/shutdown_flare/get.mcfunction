# =================================================================================================

##【 IMPULSE FREE 】
# 通常実行、手動実行可能

  ## 基本動作

    # アイテム入手
      function core:player/character/give/macro/give \
        { \
          MasterType : "unique", \
          MasterID   : "ikaros", \
          ItemID     : "shutdown_flare" \
        }

  ## 状態変化

    # 基本形態
      execute if score @s SCORE.cronica.MODE.shutdown_flare matches 0 run \
        function core:player/character/give/macro/mode_change { ItemID: "shutdown_flare", Model: "common/skill/default" }

    # 使用済み
      execute if score @s SCORE.cronica.MODE.shutdown_flare matches -1 run \
        function core:player/character/give/macro/mode_change { ItemID: "shutdown_flare", Model: "common/skill/used" }

    # 使用不可
      execute if score @s SCORE.cronica.MODE.shutdown_flare matches -2 run \
        function core:player/character/give/macro/mode_change { ItemID: "shutdown_flare", Model: "common/skill/ban" }
# =================================================================================================
# ver 0.12.0
