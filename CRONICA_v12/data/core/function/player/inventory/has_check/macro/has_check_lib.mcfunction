# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常事項、マクロ、手動実行不可

  ## 所持確認

    # スロット避難
      item replace entity @s enderchest.0 from entity @s container.35

    # スロットID取得
      $item replace entity @s container.35 from entity @s $(Slot)

    # 所持確認
      $execute as @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}}]}] run \
        tag @s add TAG.cronica.INVENTORY.$(ItemID).Has

    # スロット回復
      item replace entity @s container.35 from entity @s enderchest.0

    # データリセット
      item replace entity @s enderchest.0 with air
# =================================================================================================
# ver 0.12.0
