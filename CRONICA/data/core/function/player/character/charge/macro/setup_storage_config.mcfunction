# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # ストレージコンフィグ定義

      # データリセット
        $data remove storage cronica:config $(ItemID).CustomData.$(ChargeType)

      # 基本情報記入
        $data modify storage cronica:config $(ItemID).CustomData.$(ChargeType).MasterType \
          set from storage cronica:config $(ItemID).BasicInfo.MasterType
        $data modify storage cronica:config $(ItemID).CustomData.$(ChargeType).MasterID \
          set from storage cronica:config $(ItemID).BasicInfo.MasterID
        $data modify storage cronica:config $(ItemID).CustomData.$(ChargeType).ItemID \
          set from storage cronica:config $(ItemID).BasicInfo.ItemID

        $data modify storage cronica:config $(ItemID).CustomData.$(ChargeType).ChargeType \
          set value "$(ChargeType)"

      # チャージ時間
        $data modify storage cronica:config $(ItemID).CustomData.$(ChargeType).Time \
          set from storage cronica:config $(ItemID).CustomData.$(ChargeType)_Time
# =================================================================================================
# ver 0.12.0
