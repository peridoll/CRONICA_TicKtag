# =================================================================================================

##【 IMPULSE 】

  ## 所持確認

    # メインハンド所持確認
      data modify storage cronica:temp MainHand.ItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
      execute if data storage cronica:temp MainHand{ItemID: "apollon_bow"} run tag @s add TAG.cronica.INVENTORY.apollon_bow.HasCheck

    # オフハンド所持確認
      data modify storage cronica:temp OffHand.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      execute if data storage cronica:temp OffHand{ItemID: "apollon_bow"} run tag @s add TAG.cronica.INVENTORY.apollon_bow.HasCheck

  ## 後続処理呼び出し

    # 発射時処理
      execute if entity @s[tag = TAG.cronica.INVENTORY.apollon_bow.HasCheck] run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/shoot/run

    # タグ付与
      tag @s remove TAG.cronica.INVENTORY.apollon_bow.HasCheck
# =================================================================================================
# ver 0.12.0
