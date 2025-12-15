# =================================================================================================

##【 DETECTION 】

  ## アイテム使用検知

    # 使用済みアイテムをもとのものへ戻す

      # メインハンド
        execute if items entity @s weapon.mainhand *[enchantments = {"cronica:inventory/detect/consume_item/remainder_item": 1}] run \
          function cronica:player/inventory/detect/consume_item/use_remainder/macro/mainhand with entity @s SelectedItem.components."minecraft:custom_data"

      # オフハンド
        execute if items entity @s weapon.offhand *[enchantments = {"cronica:inventory/detect/consume_item/remainder_item": 1}] run \
          function cronica:player/inventory/detect/consume_item/use_remainder/macro/offhand with entity @s equipment.offhand.components."minecraft:custom_data"
# =================================================================================================
# ver 0.14.0
