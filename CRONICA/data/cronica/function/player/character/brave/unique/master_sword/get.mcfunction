# =================================================================================================

##【 IMPULSE FREE 】
# 通常実行、手動実行可能

  ## 基本動作

    # アイテム入手
      function core:player/character/give/macro/give \
        { \
          MasterType : "unique", \
          MasterID   : "brave", \
          ItemID     : "master_sword" \
        }

  ## 状態変化

    # 基本形態
      execute if score @s SCORE.cronica.MODE.master_sword matches 0 run \
        function core:player/character/give/macro/mode_change { ItemID: "master_sword", Model: "common/weapon/default" }
# =================================================================================================
# ver 0.12.0
