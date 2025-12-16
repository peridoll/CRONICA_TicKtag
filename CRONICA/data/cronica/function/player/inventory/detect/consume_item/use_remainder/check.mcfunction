# =================================================================================================

##【 DETECTION 】
# 検知用関数

  ## アイテム消費検知

    # 使用済みアイテム返却

      # メインハンド
        execute if items entity @s weapon.mainhand *[enchantments = {"cronica:inventory/consume_item/remainder_item": 1}] run \
          function cronica:player/inventory/detect/consume_item/use_remainder/macro/act_lib {HandTypeA: "SelectedItem", HandTypeB: "weapon.mainhand"}

      # オフハンド
        execute if items entity @s weapon.offhand *[enchantments = {"cronica:inventory/consume_item/remainder_item": 1}] run \
          function cronica:player/inventory/detect/consume_item/use_remainder/macro/act_lib {HandTypeA: "equipment.offhand", HandTypeB: "weapon.offhand"}
# =================================================================================================
# ver 0.14.0
