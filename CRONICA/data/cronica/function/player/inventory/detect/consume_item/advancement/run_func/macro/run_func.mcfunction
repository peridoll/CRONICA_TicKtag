# =================================================================================================

##【 IMPULSE 】

  ## アイテム消費検知

    # 判定用タグの付与
      tag @s add TAG.cronica.SYSTEM.UsingItem.Activated

    # アイテムステータス更新
      $item modify entity @s $(HandType) {"function": "minecraft:set_custom_data", "tag": {"ItemStatus": "used"}}
      # $item modify entity @s $(HandType) {"function": "minecraft:set_custom_model_data", "strings": {"values": ["used"], "mode": "insert"}}

    # アイテム効果発動
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/activate/run

    # 基本リキャスト構築
      $function cronica:player/inventory/detect/consume_item/basic_recast/setup/macro/setup \
        { \
          "MasterID": "$(MasterID)", \
          "MasterType": "$(MasterType)", \
          "ItemID": "$(ItemID)", \
          "HandType": "$(HandType)" \
        }
# =================================================================================================
# ver 0.14.1
