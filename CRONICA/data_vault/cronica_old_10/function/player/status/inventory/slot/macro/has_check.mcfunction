# =================================================================================================

##【 DESCRIPTION 】

#
# 指定されたアイテムがインベントリ内に存在するかを確認し、存在する場合はタグを付与する
#
# =================================================================================================

##【 IMPULSE 】

  ## 所持確認

    # フルインベントリチェック
      $execute as @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}}]}] run tag @s add TAG.cronica_dev.INVENTORY.$(ItemID).Has

    # オフハンド所持確認
      $execute if entity @s[tag =! TAG.cronica_dev.INVENTORY.$(ItemID).Has] run data modify storage cronica_dev:temp OffHand.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      $execute if entity @s[tag =! TAG.cronica_dev.INVENTORY.$(ItemID).Has] if data storage cronica_dev:temp OffHand{ItemID: "$(ItemID)"} run tag @s add TAG.cronica_dev.INVENTORY.$(ItemID).Has
      data remove storage cronica_dev:temp OffHand

    # カーソルアイテム確認
      # $execute if entity @s[tag =! TAG.cronica_dev.INVENTORY.$(ItemID).Has] run data modify storage cronica_dev:temp Cursor.ItemID set from entity @s Inventory[{Slot: -106b}].components."minecraft:custom_data".ItemID
      # $execute if entity @s[tag =! TAG.cronica_dev.INVENTORY.$(ItemID).Has] if data storage cronica_dev:temp Cursor{ItemID: "$(ItemID)"} run tag @s add TAG.cronica_dev.INVENTORY.$(ItemID).Has
      # data remove storage cronica_dev:temp Cursor
# =================================================================================================
# ver 0.10.4
