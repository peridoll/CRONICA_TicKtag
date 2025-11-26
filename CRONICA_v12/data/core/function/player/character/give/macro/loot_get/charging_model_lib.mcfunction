# =================================================================================================

##【 IMPULSE 】

  ## 状態変化

    # チャージ中
      $function core:player/inventory/full_execute/func/model_change/macro/run \
        { \
          ItemID : "$(ItemID)", \
          Model  : "core:player/gauge/charging_$(ChargeNum)" \
        }
# =================================================================================================
# ver 0.12.0
