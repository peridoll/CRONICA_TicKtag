# =================================================================================================

##【 IMPULSE 】

  ## 後続処理管理

    # アイテムセーブ
      execute as @a[tag = TAG.cronica.STATUS.ChangeInventory] run function cronica:player/inventory/full_execute/func/saving_slot/run

##【 REFRESH 】

  ## データ管理

    # タグ除去
      tag @a remove TAG.cronica.STATUS.ChangeInventory
# =================================================================================================
# ver 0.11.0
