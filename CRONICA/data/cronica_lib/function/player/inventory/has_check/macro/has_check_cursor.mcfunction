# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常事項、マクロ、手動実行不可

  ## 所持確認

    # 通常インベントリ内確認
      $execute as @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}}]}] run \
        tag @s add TAG.cronica.INVENTORY.$(ItemID).Has

    # オフハンド所持確認
      data remove storage cronica:temp HasCheck
      data modify storage cronica:temp HasCheck.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      $execute if entity @s[tag =! TAG.cronica.INVENTORY.$(ItemID).Has] if data storage cronica:temp HasCheck{ItemID: "$(ItemID)"} run \
        tag @s add TAG.cronica.INVENTORY.$(ItemID).Has
      data remove storage cronica:temp HasCheck

    # カーソルアイテム確認




      # $execute if entity @s[tag =! TAG.cronica.INVENTORY.$(ItemID).Has] run \
        data modify storage cronica:temp Cursor.ItemID set from entity @s Inventory[{Slot: -106b}].components."minecraft:custom_data".ItemID
      # $execute if entity @s[tag =! TAG.cronica.INVENTORY.$(ItemID).Has] if data storage cronica:temp Cursor{ItemID: "$(ItemID)"} run \
        tag @s add TAG.cronica.INVENTORY.$(ItemID).Has
      # data remove storage cronica:temp Cursor
# =================================================================================================
# ver 0.12.0


item replace entity @s enderchest.0 from entity @s player.cursor
item modify entity @s player.cursor cronica_lib:system/cursor_leg
item replace entity @s armor.legs from entity @s player.cursor
item replace entity @s player.cursor from entity @s enderchest.0
