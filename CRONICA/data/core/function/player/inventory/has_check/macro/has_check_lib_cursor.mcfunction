# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常事項、マクロ、手動実行不可

  ## 所持確認

    # タグ管理
      execute as @s[ gamemode = creative ] run tag @s add TAG.cronica.INVENTORY.HasCheck.RunCreative
      gamemode adventure @s[tag = TAG.cronica.INVENTORY.HasCheck.RunCreative]

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

      data modify storage cronica:temp HasCheck.ItemID set from entity @s

    # コピーアイテム削除
      item replace entity @s enderchest.0 with air
      item replace entity @s armor.legs with air

    # ストレージ初期化
      data remove storage cronica:temp HasCheck

    # タグ管理
      gamemode creative @s[tag = TAG.cronica.INVENTORY.HasCheck.RunCreative]
      tag @s[tag = TAG.cronica.INVENTORY.HasCheck.RunCreative] remove TAG.cronica.INVENTORY.HasCheck.RunCreative
# =================================================================================================
# ver 0.12.0

$execute if entity @s[tag = TAG.cronica.INVENTORY.$(ItemID).Has] run say cursor
