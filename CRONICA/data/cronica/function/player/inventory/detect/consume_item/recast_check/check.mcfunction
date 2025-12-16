# =================================================================================================

##【 DETECTION 】
# 検知用関数

  ## 一定時間後にリキャストを解除する

    # 実行スロットによって分岐

      # メインハンド判定
        execute if items entity @s weapon.mainhand *[enchantments = {"cronica:inventory/consume_item/recast_check": 1}] if data entity @s SelectedItem.components.minecraft:custom_data{"ItemStatus":"used"} run \
          function cronica:player/inventory/detect/consume_item/recast_check/macro/act_lib {HandTypeA: "SelectedItem", HandTypeB: "weapon.mainhand"}

      # オフハンド判定
        execute if items entity @s weapon.offhand *[enchantments = {"cronica:inventory/consume_item/recast_check": 1}] if data entity @s equipment.offhand.components.minecraft:custom_data{"ItemStatus":"used"} run \
          function cronica:player/inventory/detect/consume_item/recast_check/macro/act_lib {HandTypeA: "equipment.offhand", HandTypeB: "weapon.offhand"}
# =================================================================================================
# ver 0.14.1
