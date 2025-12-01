# =================================================================================================

##【 IMPULSE 】

  ## 所持確認

    # データリセット
      data remove storage cronica:temp apollon_bow.ReloadCheck

    # メインハンド所持確認
      data modify storage cronica:temp apollon_bow.ReloadCheck.ItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
      execute if data storage cronica:temp apollon_bow.ReloadCheck{ItemID: "apollon_bow"} run tag @s add TAG.cronica.WEAPON.apollon_bow.ReloadCheck
      execute if data storage cronica:temp apollon_bow.ReloadCheck{ItemID: "apollon_arrow"} run tag @s add TAG.cronica.WEAPON.apollon_bow.ReloadCheck

    # オフハンド所持確認
      data modify storage cronica:temp apollon_bow.ReloadCheck.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      execute if data storage cronica:temp apollon_bow.ReloadCheck{ItemID: "apollon_bow"} run tag @s add TAG.cronica.WEAPON.apollon_bow.ReloadCheck
      execute if data storage cronica:temp apollon_bow.ReloadCheck{ItemID: "apollon_arrow"} run tag @s add TAG.cronica.WEAPON.apollon_bow.ReloadCheck








    #   data modify storage cronica:temp apollon_bow.ReloadCheck.Count set from entity @s equipment.offhand.count
    #   $execute \
    #       if data storage cronica:temp apollon_bow.ReloadCheck{ItemID: "apollon_arrow"} \
    #       unless data storage cronica:temp apollon_bow.ReloadCheck{Count: $(AmmoStack)} \
    #     run tag @s add TAG.cronica.WEAPON.apollon_bow.ReloadCheck

    # # 残弾数確認
    #   $execute if entity @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {ItemID: "apollon_arrow"}}, count: $(AmmoStack)}]}] run \
    #     tag @s remove TAG.cronica.WEAPON.apollon_bow.ReloadCheck


















#   ## 後続処理呼び出し

#     # リロード処理
#       $execute if entity @s[tag = TAG.cronica.WEAPON.apollon_bow.ReloadCheck] run \
#         function core:player/character/charge/reload/macro/run with storage cronica:config apollon_bow.CustomData.Reload

#     # タグ削除
#       $tag @s remove TAG.cronica.WEAPON.apollon_bow.ReloadCheck
# =================================================================================================
# ver 0.13.0
