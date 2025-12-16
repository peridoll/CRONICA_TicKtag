# =================================================================================================

##【 DETECTION 】
# 検知用関数

  ## インベントリ更新検知

    # アイテム状態管理

      # 基本形態のデータ付与

        # コンテナ内にある場合
          execute if items entity @s container.* *[enchantments = {"cronica:inventory/default_loot": 1}] run \
            function cronica:player/inventory/detect/change_inventory/default_loot/check_slot/container

        # オフハンドにある場合
          execute if items entity @s weapon.offhand *[enchantments = {"cronica:inventory/default_loot": 1}] run \
            function cronica:player/inventory/detect/change_inventory/default_loot/input_data {SlotTypeA:"equipment.offhand", SlotTypeB: "weapon.offhand"}

    # 実績剥奪
      schedule function cronica:player/inventory/detect/change_inventory/advancement/grant_lib 1t
# =================================================================================================
# ver 0.14.1
