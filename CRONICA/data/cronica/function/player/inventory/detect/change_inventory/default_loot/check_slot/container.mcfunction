# =================================================================================================

##【 IMPULSE 】

  ## アイテム基礎データ記入用スロット探索

    # ホットバー内にある場合
      execute if items entity @s hotbar.* *[enchantments = {"cronica:inventory/default_loot": 1}] run \
        function cronica:player/inventory/detect/change_inventory/default_loot/check_slot/hotbar

    # インベントリ内にある場合
      execute if items entity @s inventory.* *[enchantments = {"cronica:inventory/default_loot": 1}] run \
        function cronica:player/inventory/detect/change_inventory/default_loot/check_slot/inventory
# =================================================================================================
# ver 0.14.1
