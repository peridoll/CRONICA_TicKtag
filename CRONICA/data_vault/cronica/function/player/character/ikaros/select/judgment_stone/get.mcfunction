# =================================================================================================

##【 IMPULSE 】

  ## アイテム入手

    # 共通処理により入手
      function cronica:player/character/common/get/macro/run {ItemID: "judgment_stone", MasterID: "ikaros", MasterType: "select" }

  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica.MODE.judgment_stone matches 0 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "judgment_stone", Model: "common/skill/default"}

    # 使用済み
      execute if score @s SCORE.cronica.MODE.judgment_stone matches -1 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "judgment_stone", Model: "common/skill/used"}

    # 使用不可
      execute if score @s SCORE.cronica.MODE.judgment_stone matches -2 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "judgment_stone", Model: "common/skill/ban"}
# =================================================================================================
# ver 0.11.1
