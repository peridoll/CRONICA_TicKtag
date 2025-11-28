# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## 後続処理管理

    # 関数実行
      $execute \
          unless data storage cronica:temp FullExecute_saving_slot{ItemID: ""} \
          unless data storage cronica:temp FullExecute_saving_slot{OtherFunc: "weapon.offhand"} \
          unless data storage cronica:temp FullExecute_saving_slot{OtherFunc: "player.cursor"} \
        run \
          data modify storage cronica:personal/$(UUID)/inventory/saving_slot $(ItemID) set value $(SlotNum)
      $execute \
          unless data storage cronica:temp FullExecute_saving_slot{ItemID: ""} \
          if data storage cronica:temp FullExecute_saving_slot{OtherFunc: "weapon.offhand"} \
        run \
          data modify storage cronica:personal/$(UUID)/inventory/saving_slot $(ItemID) set value 36
# =================================================================================================
# ver 0.13.0
