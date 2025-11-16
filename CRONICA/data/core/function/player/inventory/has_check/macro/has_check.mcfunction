# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常事項、マクロ、手動実行不可

  ## データ管理

    # タグけし
      $tag @s remove TAG.cronica.INVENTORY.$(ItemID).Has

  ## 所持確認

    # 通常インベントリ内確認
      $execute as @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}}]}] run \
        tag @s add TAG.cronica.INVENTORY.$(ItemID).Has

      $execute if entity @s[tag = TAG.cronica.INVENTORY.$(ItemID).Has] run say mainhand

    # オフハンド所持確認
      $execute if entity @s[tag =! TAG.cronica.INVENTORY.$(ItemID).Has] run \
        function core:player/inventory/has_check/macro/has_check_lib_offhand { ItemID: "$(ItemID)" }

    # カーソルアイテム確認
      $execute if entity @s[tag =! TAG.cronica.INVENTORY.$(ItemID).Has] run \
        function core:player/inventory/has_check/macro/has_check_lib_cursor { ItemID: "$(ItemID)" }
# =================================================================================================
# ver 0.12.0

