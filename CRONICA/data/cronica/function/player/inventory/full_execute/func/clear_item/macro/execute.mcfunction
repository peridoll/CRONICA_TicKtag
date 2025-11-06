# =================================================================================================

##【 IMPULSE 】

  ## 後続処理管理

    # 関数実行
      $execute if data storage cronica:temp FullExecute_clear_item{ItemID: "$(TargetID)"} run \
        function cronica:player/inventory/full_execute/func/clear_item/macro/execute_lib with storage cronica:temp FullExecute_clear_item
# =================================================================================================
# ver 0.11.0
