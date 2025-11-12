# =================================================================================================

##【 IMPULSE 】

  ## 所持確認

    # 一時タグ削除
      tag @s remove TAG.cronica.INVENTORY.apollon_bow.Has

    # メインハンド所持確認
      data modify storage cronica:temp MainHand.ItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
      execute if data storage cronica:temp MainHand{ItemID: "apollon_bow"} run tag @s add TAG.cronica.INVENTORY.apollon_bow.Has

    # オフハンド所持確認
      data modify storage cronica:temp OffHand.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      execute if data storage cronica:temp OffHand{ItemID: "apollon_bow"} run tag @s add TAG.cronica.INVENTORY.apollon_bow.Has

  ## 後続処理呼び出し

    # 発射時処理
      execute if entity @s[tag = TAG.cronica.INVENTORY.apollon_bow.Has] run \
        function cronica:player/character/ikaros/unique/apollon_bow/library/shoot/run

    # タグ付与
      tag @s add TAG.cronica.INVENTORY.apollon_bow.Has
# =================================================================================================
# ver 0.11.0
