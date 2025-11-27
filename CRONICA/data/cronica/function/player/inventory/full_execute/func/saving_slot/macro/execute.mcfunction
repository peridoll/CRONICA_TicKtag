# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## 後続処理管理

    # 関数実行
      execute \
          unless data storage cronica:temp FullExecute_saving_slot{ItemID: ""} \
        run \
          function cronica:player/inventory/full_execute/func/saving_slot/macro/execute_lib with storage cronica:temp FullExecute_saving_slot
# =================================================================================================
# ver 0.13.0
