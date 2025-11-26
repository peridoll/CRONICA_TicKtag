# =================================================================================================

##【 REPEAT MACRO SYSTEM 】
# 反復実行、マクロ、手動実行不可

  ## 対象のアイテムを入手

    # アイテム入手
      $loot give @s loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)

  ## 後続処理起動

    # スコア減少
      $scoreboard players remove @s SCORE.cronica.INVENTORY.$(ItemID).StackCount 1

    # 再起処理
      $execute if score @s SCORE.cronica.INVENTORY.$(ItemID).StackCount matches 1.. run \
        function core:player/character/give/macro/loot_get/count_loot with storage cronica:temp $(StorageName)
# =================================================================================================
# ver 0.12.0
