# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## データ取得

    # スロットID取得
      $data modify storage cronica:temp CharacterGet.Slot set from storage cronica:personal/$(UUID)/inventory/saving_slot $(ItemID)

  ## アイテム取得

    # 通常インベントリ
      $execute unless data storage cronica:temp $(StorageName){Slot: 36} run \
        function cronica:player/inventory/common/get/macro/library/loading_slot_lib_1 with storage cronica:temp CharacterGet

    # オフハンド
      $execute if data storage cronica:temp $(StorageName){Slot: 36} run \
        function cronica:player/inventory/common/get/macro/library/loading_slot_lib_2 with storage cronica:temp CharacterGet
# =================================================================================================
# ver 0.13.0
