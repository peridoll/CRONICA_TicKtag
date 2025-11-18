# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # ストレージコンフィグ定義

      # データリセット
        $data remove storage cronica:config $(ItemID).CustomData.Reload

      # 基本情報記入
        $data modify storage cronica:config $(ItemID).CustomData.Reload.MasterType \
          set from storage cronica:config $(ItemID).BasicInfo.MasterType
        $data modify storage cronica:config $(ItemID).CustomData.Reload.MasterID \
          set from storage cronica:config $(ItemID).BasicInfo.MasterID
        $data modify storage cronica:config $(ItemID).CustomData.Reload.ItemID \
          set from storage cronica:config $(ItemID).BasicInfo.ItemID

      # 弾薬情報登録
        $data modify storage cronica:config $(ItemID).CustomData.Reload.AmmoID \
          set value $(AmmoID)
        $data modify storage cronica:config $(ItemID).CustomData.Reload.AmmoStack \
          set from storage cronica:config $(AmmoID).CustomData.DefaultStack

      # リロード時間
        $data modify storage cronica:config $(ItemID).CustomData.Reload.Time \
          set value $(ReloadTime)
# =================================================================================================
# ver 0.12.0
