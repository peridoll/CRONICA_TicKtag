# =================================================================================================

##【 IMPULSE 】

  ## 残段数管理

    # アイテム削除
      function cronica:player/inventory/full_execute/func/clear_item/macro/run {TargetType: "ItemID", TargetID: "apollon_arrow"}

    # 残数なし
      scoreboard objectives add SCORE.cronica.MODE.apollon_arrow dummy
      scoreboard players set @s SCORE.cronica.MODE.apollon_arrow -1
      function cronica:player/character/ikaros/weapon/apollon_arrow/get
# =================================================================================================
# ver 0.13.0
