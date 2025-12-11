# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## 所持確認

    # スロット避難
      item replace entity @s enderchest.0 from entity @s container.35

    # スロットID取得
      $item replace entity @s container.35 from entity @s $(Slot)

    # 所持確認
      $execute as @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {$(TargetType): "$(TargetID)"}}}]}] run \
        tag @s add TAG.cronica.INVENTORY.$(TargetID).Has

    # スロット回復
      item replace entity @s container.35 from entity @s enderchest.0

    # データリセット
      item replace entity @s enderchest.0 with minecraft:barrier[minecraft:custom_name = "使用禁止スロット"]
# =================================================================================================
# ver 0.13.0
