# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## モデル書き換え実行

    # 基本処理
      $execute if data storage cronica:temp FullExecute_model_change{$(TargetType): "$(TargetID)"} run \
        item modify entity @s container.$(SlotNum) $(TargetModel)
# =================================================================================================
# ver 0.13.0
