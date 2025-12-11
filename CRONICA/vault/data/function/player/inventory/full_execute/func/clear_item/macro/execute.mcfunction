# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## 後続処理管理

    # キャラクター関連リセット
      $execute if data storage cronica:temp FullExecute_clear_item{$(TargetType): "$(TargetID)"} run \
        function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/leave

    # アイテム削除
      $execute if data storage cronica:temp FullExecute_clear_item{$(TargetType): "$(TargetID)"} run \
        item replace entity @s container.$(SlotNum) with air
# =================================================================================================
# ver 0.13.0
