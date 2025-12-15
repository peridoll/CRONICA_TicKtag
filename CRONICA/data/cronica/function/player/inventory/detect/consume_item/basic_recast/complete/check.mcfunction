# =================================================================================================

##【 TICK 】

  ## 一定時間後にリキャストを解除する

    # 実行スロットによって分岐

      # メインハンド判定
        execute if items entity @s weapon.mainhand *[enchantments = {"cronica:inventory/detect/consume_item/basic_recast": 1}] if data entity @s SelectedItem.components.minecraft:custom_data{"ItemStatus":"used"} run \
          function cronica:player/inventory/detect/consume_item/basic_recast/complete/macro/act_mainhand with entity @s SelectedItem.components.minecraft:custom_data

      # オフハンド判定
        execute if items entity @s weapon.offhand *[enchantments = {"cronica:inventory/detect/consume_item/basic_recast": 1}] if data entity @s equipment.offhand.components.minecraft:custom_data{"ItemStatus":"used"} run \
          function cronica:player/inventory/detect/consume_item/basic_recast/complete/macro/act_offhand with entity @s equipment.offhand.components.minecraft:custom_data
# =================================================================================================
# ver 0.14.0
