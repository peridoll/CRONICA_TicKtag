# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## 特殊スロット確認

    # アイテム避難
      item replace entity @s enderchest.0 from entity @s container.35

    # 特別スロットアイテムコピー
      $item replace entity @s container.35 from entity @s $(OtherFunc)

    # アイテム避難中タグ付与
      tag @s add TAG.cronica.INVENTORY.UsingEscapeSlot

    # データ取得
      $function cronica:player/inventory/full_execute/common/macro/get_item_data with storage cronica:temp FullExecute_$(Function)

    # 関数実行
      $function cronica:player/inventory/full_execute/func/$(Function)/macro/execute with storage cronica:temp FullExecute_$(Function)

    # アイテム戻し
      $item replace entity @s $(OtherFunc) from entity @s container.35

    # アイテム戻し
      item replace entity @s container.35 from entity @s enderchest.0

    # データリセット
      item replace entity @s enderchest.0 with minecraft:barrier[minecraft:custom_name = "使用禁止スロット"]

    # アイテム避難中タグ削除
      tag @s remove TAG.cronica.INVENTORY.UsingEscapeSlot
# =================================================================================================
# ver 0.13.0
