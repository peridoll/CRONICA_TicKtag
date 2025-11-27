# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## 状態変化

    # チャージ中
      $function cronica:player/inventory/full_execute/func/model_change/macro/run \
        { \
          TargetType : "ItemID", \
          TargetID   : "$(ItemID)", \
          Model  : "cronica:common/gauge/charging_$(ChargeNum)" \
        }
# =================================================================================================
# ver 0.13.0
