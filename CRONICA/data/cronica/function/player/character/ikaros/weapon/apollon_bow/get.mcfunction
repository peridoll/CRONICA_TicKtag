# =================================================================================================

##【 IMPULSE FREE 】
# 通常実行、手動実行可能

  ## 基本動作

    # アイテム入手
      function core:player/character/give/macro/give \
        { \
          MasterType : "weapon", \
          MasterID   : "ikaros", \
          ItemID     : "apollon_bow" \
        }
      function core:player/character/give/macro/give \
        { \
          MasterType : "weapon", \
          MasterID   : "ikaros", \
          ItemID     : "apollon_arrow" \
        }

  ## 状態変化

    # 基本形態
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches 0 run \
        function core:player/character/give/macro/mode_change { ItemID: "apollon_arrow", Model: "core:player/weapon/ammo/arrow_default" }

    # 使用済み
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches -1 run \
        function core:player/character/give/macro/mode_change { ItemID: "apollon_arrow", Model: "core:player/weapon/ammo/used" }

    # モードチェンジ：黄昏
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 1 run \
        function core:player/character/give/macro/mode_change { ItemID: "apollon_bow",   Model: "cronica:character/ikaros/weapon/apollon_bow/twilight" }
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 1 run \
        function core:player/character/give/macro/mode_change { ItemID: "apollon_arrow", Model: "cronica:character/ikaros/weapon/apollon_bow/twilight" }
# =================================================================================================
# ver 0.12.0
