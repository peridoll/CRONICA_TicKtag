# =================================================================================================

##【 IMPULSE 】

  ## 準備

    # コンフィグ読み込み
      function cronica:player/character/ikaros/unique/apollon_bow/config

  ## アイテム入手

    # 太陽神の弓
      function cronica:player/status/common_lib/macro/get \
        { \
          MasterID     : "ikaros", \
          MasterType   : "unique", \
          ItemID       : "apollon_bow" \
        }

    # 太陽神の矢
      function cronica:player/status/common_lib/macro/get \
        { \
          MasterID     : "ikaros", \
          MasterType   : "unique", \
          ItemID       : "apollon_arrow" \
        }

  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 0 run \
        function cronica:player/status/inventory/model/macro/item_modify {ItemID: "apollon_bow",   Model: "common/weapon/default"}
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches 0 run \
        function cronica:player/status/inventory/model/macro/item_modify {ItemID: "apollon_arrow", Model: "common/ammo/default"  }

    # 黄昏
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 1 run \
        function cronica:player/status/inventory/model/macro/item_modify {ItemID: "apollon_bow",   Model: "character/ikaros/unique/apollon_bow/unique/twilight"  }
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 1 run \
        function cronica:player/status/inventory/model/macro/item_modify {ItemID: "apollon_bow",   Model: "character/ikaros/unique/apollon_arrow/unique/twilight"}

    # 弾薬表示
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches 1 run \
        function cronica:player/status/inventory/model/macro/item_modify {ItemID: "apollon_arrow", Model: "common/ammo/one" }
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches -1 run \
        function cronica:player/status/inventory/model/macro/item_modify {ItemID: "apollon_arrow", Model: "common/ammo/zero"}

  ## 後続処理起動

    # 行動検知処理起動
      schedule function cronica:player/character/ikaros/unique/apollon_bow/boot/free_detect 1t
# =================================================================================================

##【 REFRESH 】

  ## スコア管理

    # アイテムモード初期化
      execute if score @s SCORE.cronica.MODE.apollon_bow matches 0 run scoreboard players reset @s SCORE.cronica.MODE.apollon_bow
      execute if score @s SCORE.cronica.MODE.apollon_arrow matches 0 run scoreboard players reset @s SCORE.cronica.MODE.apollon_arrow

    # アイテムモード撤去
      execute unless entity @a[scores = {SCORE.cronica.MODE.apollon_bow = -99..}] run scoreboard objectives remove SCORE.cronica.MODE.apollon_bow
      execute unless entity @a[scores = {SCORE.cronica.MODE.apollon_arrow = -99..}] run scoreboard objectives remove SCORE.cronica.MODE.apollon_arrow
# =================================================================================================
# ver 0.10.4
