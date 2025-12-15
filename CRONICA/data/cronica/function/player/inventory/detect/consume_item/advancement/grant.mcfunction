# =================================================================================================

##【 DETECTION 】
# 検知用関数

  ## アイテム消費検知

    # アイテム消費時処理

      # メインハンド判定
        execute if entity @s[tag =! TAG.cronica.SYSTEM.UsingItem.Activated] if data entity @s SelectedItem.components."minecraft:custom_data"{ItemStatus:"ready"} run \
          function cronica:player/inventory/detect/consume_item/advancement/run_func/macro/act_mainhand with entity @s SelectedItem.components.minecraft:custom_data

      # オフハンド判定
        execute if entity @s[tag =! TAG.cronica.SYSTEM.UsingItem.Activated] if data entity @s equipment.offhand.components."minecraft:custom_data"{ItemStatus:"ready"} run \
          function cronica:player/inventory/detect/consume_item/advancement/run_func/macro/act_offhand with entity @s equipment.offhand.components.minecraft:custom_data

      # 判定用タグリセット
        tag @s remove TAG.cronica.SYSTEM.UsingItem.Activated

  ## プレイヤー管理

    # 実績を初期化
      advancement revoke @s only cronica:inventory/consume_item
# =================================================================================================
# ver 0.14.1
