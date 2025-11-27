# =================================================================================================

##【 IMPULSE 】
# 手動実行可, 単数実行

  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
  #
  # FullExecute-SavingSlot 関数
  #
  # 処理：
  #   インベントリ内を探索し、所持しているアイテムのスロット番号を保存する
  #   アイテムIDに対して一位になるようにUUIDベースで保存する
  #
  # Doc:v1
  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/



  ## 共通マクロ実行:スロット保存

    # データ作成
      data remove storage cronica:temp FullExecute_saving_slot
      data modify storage cronica:temp FullExecute_saving_slot.Function set value "saving_slot"

    # UUID取得
      function cronica:system/data/storage/uuid/macro/get {StorageName: "FullExecute_saving_slot"}

    # インベントリ探索
      function cronica:player/inventory/full_execute/common/macro/run with storage cronica:temp FullExecute_saving_slot
# =================================================================================================
# ver 0.13.0
