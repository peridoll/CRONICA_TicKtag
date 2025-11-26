# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常事項、マクロ、手動実行不可

  ## ストレージ管理

    # キャラクターデータ取得
      $data modify storage cronica:temp $(StorageName).MasterType set from storage cronica:config $(ItemID).BasicInfo.MasterType
      $data modify storage cronica:temp $(StorageName).MasterID set from storage cronica:config $(ItemID).BasicInfo.MasterID
      $data modify storage cronica:temp $(StorageName).ItemID set from storage cronica:config $(ItemID).BasicInfo.ItemID
# =================================================================================================
# ver 0.12.0
