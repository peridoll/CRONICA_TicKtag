# =================================================================================================

##【 IMPULSE 】

  ## 共通マクロ実行:アイテム削除

    # データ作成
      data remove storage cronica:temp FullExecute_clear_item
      data modify storage cronica:temp FullExecute_clear_item.Function set value "clear_item"
      $data modify storage cronica:temp FullExecute_clear_item.TargetType set value "$(TargetType)"
      $data modify storage cronica:temp FullExecute_clear_item.TargetID set value "$(TargetID)"

    # インベントリ探索
      function core:player/inventory/full_execute/common/macro/run with storage cronica:temp FullExecute_clear_item
# =================================================================================================
# ver 0.12.0
