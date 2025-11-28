# =================================================================================================

##【 MACRO IMPULSE 】
# 手動実行不可, 単数実行

  ## 後続処理管理

    # CT処理呼び出し
      $schedule function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/recast 1t

  ## データ管理

    # ストレージ削除
      data remove storage cronica:temp RecastRun
# =================================================================================================
# ver 0.13.0
