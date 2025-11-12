# =================================================================================================

##【 IMPULSE FREE 】
# 通常実行、手動実行可能

  ## 基本動作

    # アイテム入手
      function core:player/character/give/macro/give \
        { \
          MasterType : "select", \
          MasterID   : "brave", \
          ItemID     : "hook_shot" \
        }

  ## 状態変化

    # 基本形態
      execute if score @s SCORE.cronica.MODE.hook_shot matches 0 run \
        function core:player/character/give/macro/mode_change { ItemID: "hook_shot", Model: "common/skill/default" }

    # 使用済み
      execute if score @s SCORE.cronica.MODE.hook_shot matches -1 run \
        function core:player/character/give/macro/mode_change { ItemID: "hook_shot", Model: "common/skill/used" }

    # 使用不可
      execute if score @s SCORE.cronica.MODE.hook_shot matches -2 run \
        function core:player/character/give/macro/mode_change { ItemID: "hook_shot", Model: "common/skill/ban" }
# =================================================================================================
# ver 0.12.0
