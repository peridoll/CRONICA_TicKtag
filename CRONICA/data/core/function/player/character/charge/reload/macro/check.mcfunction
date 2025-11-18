# =================================================================================================

##【 IMPULSE 】

  ## 所持確認

    # データリセット
      data remove storage cronica:temp MainHand
      data remove storage cronica:temp OffHand

    # メインハンド所持確認
      data modify storage cronica:temp MainHand.ItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
      $execute if data storage cronica:temp MainHand{ItemID: "$(ItemID)"} run tag @s add TAG.cronica.WEAPON.$(ItemID).ReloadCheck
      $execute if data storage cronica:temp MainHand{ItemID: "$(AmmoID)"} run tag @s add TAG.cronica.WEAPON.$(ItemID).ReloadCheck

    # オフハンド所持確認
      data modify storage cronica:temp OffHand.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      data modify storage cronica:temp OffHand.Count set from entity @s equipment.offhand.count
      $execute if data storage cronica:temp OffHand{ItemID: "$(ItemID)"} run tag @s add TAG.cronica.WEAPON.$(ItemID).ReloadCheck
      $execute \
          if data storage cronica:temp OffHand{ItemID: "$(AmmoID)"} \
          unless data storage cronica:temp OffHand{Count: $(AmmoStack)} \
        run tag @s add TAG.cronica.WEAPON.$(ItemID).ReloadCheck

    # 残弾数確認
      $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {ItemID: "$(AmmoID)"}}, count: $(AmmoStack)}]}] run \
        tag @s remove TAG.cronica.WEAPON.$(ItemID).ReloadCheck

  ## 後続処理呼び出し

    # リロード処理
      $execute if entity @s[tag = TAG.cronica.WEAPON.$(ItemID).ReloadCheck] run \
        function core:player/character/charge/reload/macro/run with storage cronica:config $(ItemID).CustomData.Reload

    # タグ削除
      $tag @s remove TAG.cronica.WEAPON.$(ItemID).ReloadCheck
# =================================================================================================
# ver 0.12.0
