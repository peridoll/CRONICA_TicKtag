# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常事項、マクロ、手動実行不可

  ## 所持確認

    # ストレージ初期化
      data remove storage cronica:temp HasCheck

    # カーソルアイテムをレッグスロットにコピー
      item replace entity @s enderchest.0 from entity @s player.cursor
      item modify entity @s player.cursor core:system/cursor_leg
      item replace entity @s armor.legs from entity @s player.cursor
      item replace entity @s player.cursor from entity @s enderchest.0

    # カーソルアイテム確認
      data modify storage cronica:temp HasCheck.ItemID set from entity @s equipment.legs.components."minecraft:custom_data".ItemID
      $execute if data storage cronica:temp HasCheck{ItemID: "$(ItemID)"} run \
        tag @s add TAG.cronica.INVENTORY.$(ItemID).Has

    # コピーアイテム削除
      item replace entity @s armor.legs with air
      item replace entity @s enderchest.0 with air

    # ストレージ初期化
      data remove storage cronica:temp HasCheck
# =================================================================================================
# ver 0.12.0
