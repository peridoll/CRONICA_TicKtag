# =================================================================================================

##【 IMPULSE 】

  ## 固有情報を記入

    # アイテムモデル設定
      $item modify entity @s $(SlotTypeB) { \
        "function": "minecraft:set_components", \
        components: { \
          "minecraft:item_model": "cronica:character/$(MasterID)/$(MasterType)/$(ItemID)" \
        } \
      }

    # クールタイム設定
      $execute if data storage cronica:temp DefaultLootActivation{RecastType:"Basic"} run \
        item modify entity @s $(SlotTypeB) { \
          "function": "minecraft:set_components", \
          components: { \
            "minecraft:use_cooldown": { \
              "seconds": $(RecastTime), \
              "cooldown_group": "$(ItemID)" \
            } \
          } \
        }

    # アイテム消費設定
      $execute if data storage cronica:temp DefaultLootActivation{RecastType:"Basic"} run \
        item modify entity @s $(SlotTypeB) { \
          "function": "minecraft:set_components", \
          components: { \
            "minecraft:use_remainder": { \
              "id": "minecraft:stick", \
              "components": { \
                "enchantments": \
                { \
                  "cronica:inventory/consume_item/remainder_item": 1 \
                }, \
                "minecraft:item_model": "cronica:character/$(MasterID)/$(MasterType)/$(ItemID)", \
                "minecraft:custom_data": { \
                  "MasterID": "$(MasterID)", \
                  "MasterType": "$(MasterType)", \
                  "ItemID": "$(ItemID)" \
                } \
              } \
            } \
          } \
        }
# =================================================================================================
# ver 0.14.1
