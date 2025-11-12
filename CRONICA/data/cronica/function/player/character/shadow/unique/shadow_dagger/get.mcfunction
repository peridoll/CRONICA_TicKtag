# =================================================================================================

##【 IMPULSE FREE 】
# 通常実行、手動実行可能

  ## 基本動作

    # アイテム入手
      function core:player/character/give/macro/give \
        { \
          MasterType : "unique", \
          MasterID   : "shadow", \
          ItemID     : "shadow_dagger" \
        }

  ## 状態変化

    # 基本形態
      execute if score @s SCORE.cronica.MODE.shadow_dagger matches 0 run \
        function core:player/character/give/macro/mode_change { ItemID: "shadow_dagger", Model: "common/weapon/default" }

    # 使用済み
      execute if score @s SCORE.cronica.MODE.shadow_dagger matches -1 run \
        function core:player/character/give/macro/mode_change { ItemID: "shadow_dagger", Model: "common/weapon/used" }

    # 使用不可
      execute if score @s SCORE.cronica.MODE.shadow_dagger matches -2 run \
        function core:player/character/give/macro/mode_change { ItemID: "shadow_dagger", Model: "common/weapon/ban" }
# =================================================================================================
# ver 0.12.0
