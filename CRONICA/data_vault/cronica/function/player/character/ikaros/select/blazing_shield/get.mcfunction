# =================================================================================================

##【 IMPULSE 】

  ## アイテム入手

    # 共通処理により入手
      function cronica:player/character/common/get/macro/run {ItemID: "blazing_shield", MasterID: "ikaros", MasterType: "select" }

  ## アイテムモデル変更

    # 基本形態
      execute if score @s SCORE.cronica.MODE.blazing_shield matches 0 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "blazing_shield", Model: "common/skill/default"}

    # 使用済み
      execute if score @s SCORE.cronica.MODE.blazing_shield matches -1 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "blazing_shield", Model: "common/skill/used"}

    # 使用不可
      execute if score @s SCORE.cronica.MODE.blazing_shield matches -2 run \
        function cronica:player/character/common/get/macro/mode_change {ItemID: "blazing_shield", Model: "common/skill/ban"}
# =================================================================================================
# ver 0.11.1
