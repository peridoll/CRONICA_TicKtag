# =================================================================================================

##【 IMPULSE 】
# 手動実行可, 単数実行

  ## 後続処理

    # ループするメインの機構を呼び出し
      execute if entity @s[tag =! TAG.cronica.STATUS.ChangeInventory] run \
        schedule function cronica:player/action/detect/advancement/inventory/change_inventory/main 2t

  ## データ管理

    # タグ設置
      tag @s add TAG.cronica.STATUS.ChangeInventory
# =================================================================================================
# ver 0.13.0
