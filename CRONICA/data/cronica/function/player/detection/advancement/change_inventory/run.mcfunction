# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # タグ設置
      tag @s add TAG.cronica.STATUS.ChangeInventory

  ## 後続処理

    # ループするメインの機構を呼び出し
      schedule function cronica:player/status/detection/advancements/change_inventory/main 2t
# =================================================================================================
# ver 0.12.0
