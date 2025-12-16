# =================================================================================================

##【 LIBRARY 】

  ## 基本リキャスト設定

    # アイテムステータス更新
      $item modify entity @s $(HandTypeB) {"function": "minecraft:set_custom_data", "tag": {"ItemStatus": "used"}}

    # リキャスト開始時間の保存
      $item modify entity @s $(HandTypeB) {"function": "minecraft:set_custom_data", "tag": {"RecastStartTime": $(RecastStartTime)}}

    # エンチャント付与
      $item modify entity @s $(HandTypeB) {"function": "minecraft:set_components", components: {"minecraft:enchantments": {"cronica:inventory/consume_item/recast_check": 1}}}
# =================================================================================================
# ver 0.14.1
