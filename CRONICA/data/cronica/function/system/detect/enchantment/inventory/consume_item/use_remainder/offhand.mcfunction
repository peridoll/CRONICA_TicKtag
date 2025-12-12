# =================================================================================================

##【 DETECTION 】

  ## アイテム使用検知

    # 使用時の関数を実行
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/activate/run

    # オフハンドの使用済みアイテムをもとのものへ戻す
      $loot replace entity @s weapon.offhand loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
# =================================================================================================
# ver 0.14.0
