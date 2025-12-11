# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## 状態変化

    # 基本形態
      $execute if score @s SCORE.cronica.MODE.$(ItemID) matches 0 run \
        function cronica:player/inventory/get/macro/mode_change { TargetType: "ItemID", TargetID: "$(ItemID)", Model: "cronica:common/$(MasterType)/default" }

    # 使用中
      $execute if score @s SCORE.cronica.MODE.$(ItemID) matches -1 run \
        function cronica:player/inventory/get/macro/mode_change { TargetType: "ItemID", TargetID: "$(ItemID)", Model: "cronica:common/$(MasterType)/using" }

    # 使用済み
      $execute if score @s SCORE.cronica.MODE.$(ItemID) matches -2 run \
        function cronica:player/inventory/get/macro/mode_change { TargetType: "ItemID", TargetID: "$(ItemID)", Model: "cronica:common/$(MasterType)/used" }

    # 使用不可
      $execute if score @s SCORE.cronica.MODE.$(ItemID) matches 0.. if score @s SCORE.cronica.STATUS.banning matches 0.. run \
        function cronica:player/inventory/get/macro/mode_change { TargetType: "ItemID", TargetID: "$(ItemID)", Model: "cronica:common/$(MasterType)/ban" }
# =================================================================================================
# ver 0.13.0
