# =================================================================================================

##【 IMPULSE 】

  ## 共通マクロ実行:アイテム削除

    # # データ作成
      data remove storage cronica:temp FullExecute_saving_slot
      data modify storage cronica:temp FullExecute_saving_slot.Function set value "saving_slot"

    # UUID取得
      function core:system/data/storage/uuid/macro/get {StorageName: "FullExecute_saving_slot"}

    # インベントリ探索
      function core:player/inventory/full_execute/common/macro/run with storage cronica:temp FullExecute_saving_slot
# =================================================================================================
# ver 0.12.0
