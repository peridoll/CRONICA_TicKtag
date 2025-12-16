# =================================================================================================

##【 DETECTION ADVANCEMENT-GRANT 】
# 検知用関数 実績獲得時処理

  ## プレイヤー管理

    # 実績を初期化
      advancement revoke @s only cronica:inventory/consume_item

  ## アイテム消費検知
  # アイテムを消費したタイミングでの実行

    # アイテム消費時処理
    # どちらの手で消費したかを判定し、処理を分岐する

      # メインハンド判定
        execute if entity @s[tag =! TAG.cronica.INVENTORY.ConsumeItem.Activated] if data entity @s SelectedItem.components."minecraft:custom_data"{ItemStatus:"ready"} run \
          function cronica:player/inventory/detect/consume_item/advancement/activate/macro/act_lib {HandTypeA: "SelectedItem", HandTypeB: "weapon.mainhand"}

      # オフハンド判定
        execute if entity @s[tag =! TAG.cronica.INVENTORY.ConsumeItem.Activated] if data entity @s equipment.offhand.components."minecraft:custom_data"{ItemStatus:"ready"} run \
          function cronica:player/inventory/detect/consume_item/advancement/activate/macro/act_lib {HandTypeA: "equipment.offhand", HandTypeB: "weapon.offhand"}

      # 判定用タグリセット
        tag @s remove TAG.cronica.INVENTORY.ConsumeItem.Activated
# =================================================================================================
# ver 0.14.1
