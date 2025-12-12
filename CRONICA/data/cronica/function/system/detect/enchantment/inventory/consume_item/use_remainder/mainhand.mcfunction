# =================================================================================================

##【 DETECTION 】

  ## アイテム使用検知

    # 使用時の関数を実行
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/activate/run

    # メインハンドの使用済みアイテムをもとのものへ戻す
      $loot replace entity @s weapon.mainhand loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
# =================================================================================================
# ver 0.14.0
