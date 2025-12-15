# =================================================================================================

##【 IMPULSE 】

  ## 基本(未設定)リキャスト構築

    # リキャスト開始時間の保存
      $data modify storage cronica:temp BasicRecastSetup.HandType set value "$(HandType)"
      execute store result storage cronica:temp BasicRecastSetup.RecastStartTime int 1 run time query gametime
      function cronica:player/inventory/detect/consume_item/basic_recast/setup/macro/setup_lib with storage cronica:temp BasicRecastSetup
      data remove storage cronica:temp BasicRecastSetup
# =================================================================================================
# ver 0.14.0
