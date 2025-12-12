# =================================================================================================

##【 IMPULSE LIBRARY 】
# 手動実行不可, 鎖状実行

  ## 後続処理管理

    # アイテムセーブ
      execute as @a[tag = TAG.cronica.STATUS.ChangeInventory] run function cronica:player/inventory/full_execute/func/saving_slot/run

  ## データ管理

    # タグ除去
      tag @a remove TAG.cronica.STATUS.ChangeInventory
# =================================================================================================
# ver 0.13.0
