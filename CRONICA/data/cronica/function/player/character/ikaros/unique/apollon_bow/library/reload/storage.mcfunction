# =================================================================================================

##【 IMPULSE 】

  ## データ書き込み

    # ストレージ初期化
      data remove storage cronica:temp Reload

    # データ準備
      data modify storage cronica:temp Reload.ChargeType set value "Reload"
      data modify storage cronica:temp Reload.ChargeAddress set value "reload"
      data modify storage cronica:temp Reload.ChargeConfig set value "ReloadTime"
      data modify storage cronica:temp Reload.Display set value "RELOAD"
      data modify storage cronica:temp Reload.DisplayColor1 set value "green"
      data modify storage cronica:temp Reload.DisplayColor2 set value "lime"
      data modify storage cronica:temp Reload.TagCategory set value "WEAPON"
      data modify storage cronica:temp Reload.MasterID set value "ikaros"
      data modify storage cronica:temp Reload.MasterType set value "unique"
      data modify storage cronica:temp Reload.ItemID set value "apollon_bow"
# =================================================================================================
# ver 0.10.4
