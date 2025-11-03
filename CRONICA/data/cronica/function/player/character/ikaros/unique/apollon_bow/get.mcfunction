# =================================================================================================

##【 IMPULSE 】

  ## 準備

    # コンフィグ読み込み
      function cronica:player/character/ikaros/unique/apollon_bow/config

  ## アイテム入手

    # 太陽神の弓
      function cronica:player/character/common/get/macro/run \
        { \
          MasterID     : "ikaros", \
          MasterType   : "unique", \
          ItemID       : "apollon_bow" \
        }

    # 太陽神の矢
      function cronica:player/character/common/get/macro/run \
        { \
          MasterID     : "ikaros", \
          MasterType   : "unique", \
          ItemID       : "apollon_arrow" \
        }

  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 0 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_bow",   Model: "common/weapon/default"     }
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches 0 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_arrow", Model: "common/weapon/ammo/default"}

    # 弾薬表示
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches 1 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_arrow", Model: "common/weapon/ammo/one" }
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches -1 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_arrow", Model: "common/weapon/ammo/zero"}

    # 黄昏
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 1 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_bow",   Model: "character/ikaros/unique/apollon_bow/twilight"}
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 1 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_arrow", Model: "character/ikaros/unique/apollon_bow/twilight"}
# =================================================================================================
# ver 0.11.0
