# =================================================================================================

##【 IMPULSE 】

  ## アイテム入手

    # 共通処理により入手
      function cronica:player/character/common/get/macro/run {ItemID: "begin_twilight", MasterID: "ikaros", MasterType: "unique" }

  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica.MODE.begin_twilight matches 0 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "begin_twilight", Model: "common/skill/default"}

    # 使用済み
      execute if score @s SCORE.cronica.MODE.begin_twilight matches -1 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "begin_twilight", Model: "common/skill/used"}

    # 使用不可
      execute if score @s SCORE.cronica.MODE.begin_twilight matches -2 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "begin_twilight", Model: "common/skill/ban"}
# =================================================================================================
# ver 0.11.1
