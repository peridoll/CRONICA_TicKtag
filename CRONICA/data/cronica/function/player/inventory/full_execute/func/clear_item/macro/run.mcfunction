# =================================================================================================

##【 IMPULSE 】

  ## 共通マクロ実行:アイテム削除

    # データ作成
      data remove storage cronica:temp FullExecute_item_clear
      data modify storage cronica:temp FullExecute_item_clear.Function set value "item_clear"
      $data modify storage cronica:temp FullExecute_item_clear.TargetID set value "$(ItemID)"

    # インベントリ探索
      function cronica:player/inventory/full_execute/common/macro/run with storage cronica:temp FullExecute_item_clear
# =================================================================================================
# ver 0.11.0
