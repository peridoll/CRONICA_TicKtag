# =================================================================================================

##【 DETECTION 】

  ## アイテム使用時処理：メインハンド

    # 共通処理
      $function cronica:player/inventory/detect/consume_item/basic_recast/complete/macro/check \
        { \
          "RecastStartTime":"$(RecastStartTime)", \
          "RecastTime": "$(RecastTime)", \
          "HandType": "weapon.offhand" \
        }
# =================================================================================================
# ver 0.14.0
