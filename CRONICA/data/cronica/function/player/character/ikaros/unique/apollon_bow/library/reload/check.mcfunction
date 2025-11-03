# =================================================================================================

##【 IMPULSE 】

  ## 所持確認

    # 一時タグ削除
      tag @s remove TAG.cronica.INVENTORY.apollon_bow.Has

    # メインハンド所持確認
      data modify storage cronica:temp MainHand.ItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
      execute if data storage cronica:temp MainHand{ItemID: "apollon_bow"  } run tag @s add TAG.cronica.INVENTORY.apollon_bow.Has
      execute if data storage cronica:temp MainHand{ItemID: "apollon_arrow"} run tag @s add TAG.cronica.INVENTORY.apollon_bow.Has

    # オフハンド所持確認
      data modify storage cronica:temp OffHand.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      data modify storage cronica:temp OffHand.Count set from entity @s equipment.offhand.count
      execute if data storage cronica:temp OffHand{ItemID: "apollon_bow"} run tag @s add TAG.cronica.INVENTORY.apollon_bow.Has
      execute \
          if data storage cronica:temp OffHand{ItemID: "apollon_arrow"} \
          unless data storage cronica:temp OffHand{Count: 8} \
        run tag @s add TAG.cronica.INVENTORY.apollon_bow.Has

    # 残弾数確認
      execute if entity @s[nbt = {Inventory:[{components:{"minecraft:custom_data":{ItemID:"apollon_arrow"}}, Count:8b}]}] run \
        tag @s remove TAG.cronica.INVENTORY.apollon_bow.Has

  ## 後続処理呼び出し

    # リロード処理
      execute if entity @s[tag = TAG.cronica.INVENTORY.apollon_bow.Has] run \
        function cronica:player/character/common/charge/macro/run with storage cronica:config ApollonBowReload
# =================================================================================================
# ver 0.11.0
