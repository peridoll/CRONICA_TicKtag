# =================================================================================================

##【 IMPULSE 】

  ## 状態変化

    # 基本形態
      $execute if score @s SCORE.cronica.MODE.$(ItemID) matches 0 run \
        function core:player/character/give/macro/mode_change { ItemID: "$(ItemID)", Model: "core:player/$(Model)/default" }

    # 使用済み
      $execute if score @s SCORE.cronica.MODE.$(ItemID) matches -1 run \
        function core:player/character/give/macro/mode_change { ItemID: "$(ItemID)", Model: "core:player/$(Model)/used" }

    # 使用不可
      $execute if score @s SCORE.cronica.MODE.$(ItemID) matches -2 run \
        function core:player/character/give/macro/mode_change { ItemID: "$(ItemID)", Model: "core:player/$(Model)/ban" }

    # チャージ中
      $execute if score @s SCORE.cronica.MODE.$(ItemID) matches 100.. run \
        function core:player/character/give/macro/loot_get/charging_model with storage cronica:temp CharacterGive
# =================================================================================================
# ver 0.12.0
