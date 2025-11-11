# =================================================================================================

##【 IMPULSE 】

  ## 対象のアイテムを入手

    # アイテム入手
      $loot give @s loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)

  ## 後続処理起動

    # スコア減少
      $scoreboard players remove @s SCORE.cronica.INVENTORY.$(ItemID).Count 1

    # 再起処理
      $execute if score @s SCORE.cronica.INVENTORY.$(ItemID).Count matches 1.. run \
        function cronica:player/character/common/get/macro/count_loot with storage cronica:temp CommonGet
# =================================================================================================
# ver 0.11.0
