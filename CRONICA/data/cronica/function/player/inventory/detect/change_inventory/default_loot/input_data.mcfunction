# =================================================================================================

##【 IMPULSE 】

  ## アイテム基礎データ記入

    # 固有情報を記入

      # 全データ取得
        $data modify storage cronica:temp DefaultLootActivation set from entity @s $(SlotTypeA).components."minecraft:custom_data"

      # スロットデータ記入
        $data modify storage cronica:temp DefaultLootActivation.SlotTypeA set value "$(SlotTypeA)"
        $data modify storage cronica:temp DefaultLootActivation.SlotTypeB set value "$(SlotTypeB)"

      # リキャスト時間の標準化
        scoreboard objectives add SCORE.cronica.INVENTORY.RecastTimeSetup dummy
        execute store result score @s SCORE.cronica.INVENTORY.RecastTimeSetup run data get storage cronica:temp DefaultLootActivation.RecastTime
        execute if score @s SCORE.cronica.INVENTORY.RecastTimeSetup matches 0 run scoreboard players set @s SCORE.cronica.INVENTORY.RecastTimeSetup 1
        execute store result storage cronica:temp DefaultLootActivation.RecastTime int 1 run scoreboard players get @s SCORE.cronica.INVENTORY.RecastTimeSetup
        scoreboard objectives remove SCORE.cronica.INVENTORY.RecastTimeSetup

      # 実行
        function cronica:player/inventory/detect/change_inventory/default_loot/input_data_lib with storage cronica:temp DefaultLootActivation

    # 共通情報を記入

      # アイテムステータス更新
        $item modify entity @s $(SlotTypeB) { \
          "function": "minecraft:set_custom_data", \
          "tag": { \
            "ItemStatus": "ready" \
          } \
        }

      # 消費可能化
        $execute if data storage cronica:temp DefaultLootActivation{RecastType:"Basic"} run \
          item modify entity @s $(SlotTypeB) { \
            "function": "minecraft:set_components", \
            components: { \
              "minecraft:consumable": { \
                "consume_seconds": 0, \
                "sound": "intentionally_empty", \
                "has_consume_particles": false \
              } \
            } \
          }

      # マックススタックサイズ / オーバーレイ / カスタムモデルデータ 設定
        $item modify entity @s $(SlotTypeB) { \
          "function": "minecraft:set_components", \
          components: { \
            "minecraft:max_stack_size": 1, \
            "minecraft:enchantment_glint_override": true, \
            "minecraft:custom_model_data": {strings: ["default"]} \
          } \
        }

      # 検知用エンチャントを解除
        $item modify entity @s $(SlotTypeB) {"function": "minecraft:set_components", components: {"minecraft:enchantments": {"cronica:inventory/default_loot": 2}}}

  ## アイテム固有データ記入完了

    # ストレージ削除
      data remove storage cronica:temp DefaultLootActivation
# =================================================================================================
# ver 0.14.1
