# =================================================================================================

##【 IMPULSE 】

  ## 一定時間後にリキャストを解除する

    # アイテムステータス更新
      $item modify entity @s $(HandType) {"function": "minecraft:set_custom_data", "tag": {"ItemStatus": "ready"}}
      # $item modify entity @s $(HandType) {"function": "minecraft:set_custom_model_data", "strings": {"values": ["default"], "mode": "insert"}}
# =================================================================================================
# ver 0.14.0
