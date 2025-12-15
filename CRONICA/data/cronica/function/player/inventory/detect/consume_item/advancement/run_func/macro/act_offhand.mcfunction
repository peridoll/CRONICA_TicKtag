# =================================================================================================

##【 ACT-LIB 】
# 分岐接続用関数

  ## アイテム消費時処理：オフハンド

    # 共通処理
      $function cronica:player/inventory/detect/consume_item/advancement/run_func/macro/run_func \
        { \
          "MasterID": "$(MasterID)", \
          "MasterType": "$(MasterType)", \
          "ItemID": "$(ItemID)", \
          "HandType": "weapon.offhand" \
        }
# =================================================================================================
# ver 0.14.1
