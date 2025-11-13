# =================================================================================================

##【 IMPULSE 】

  ## 共通マクロ実行:モデル切り替え

    # データ作成
      data remove storage cronica:temp FullExecute_model_change
      data modify storage cronica:temp FullExecute_model_change.Function set value "model_change"
      $data modify storage cronica:temp FullExecute_model_change.TargetID set value "$(ItemID)"
      $data modify storage cronica:temp FullExecute_model_change.TargetModel set value "$(Model)"

    # インベントリ探索
      function core:player/inventory/full_execute/common/macro/run with storage cronica:temp FullExecute_model_change
# =================================================================================================
# ver 0.12.0
