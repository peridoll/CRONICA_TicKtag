# =================================================================================================

##【 MACRO LIBRARY REPEAT 】
# 手動実行不可, 鎖状実行, 再起実行

  ## 対象のアイテムを入手

    # アイテム入手
      $loot give @s loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)

  ## 後続処理起動

    # スコア減少
      $scronicaboard players remove @s SCORE.cronica.INVENTORY.$(ItemID).StackCount 1

    # 再起処理
      $execute if score @s SCORE.cronica.INVENTORY.$(ItemID).StackCount matches 1.. run \
        function cronica:player/inventory/common/get/macro/library/count_loot with storage cronica:temp CharacterGet
# =================================================================================================
# ver 0.13.0
