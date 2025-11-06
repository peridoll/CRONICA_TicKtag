# =================================================================================================

##【 IMPULSE 】

  ## リロード実行

    # アイテム削除
      function cronica:player/inventory/full_execute/func/clear_item/macro/run {ItemID: "apollon_bow"}
      function cronica:player/inventory/full_execute/func/clear_item/macro/run {ItemID: "apollon_arrow"}

    # アイテム置き換え
      scoreboard objectives add SCORE.cronica.MODE.apollon_bow dummy
      scoreboard players set @s SCORE.cronica.MODE.apollon_bow 0
      scoreboard objectives add SCORE.cronica.MODE.apollon_arrow dummy
      scoreboard players set @s SCORE.cronica.MODE.apollon_arrow 0
      function cronica:player/character/ikaros/unique/apollon_bow/get
# =================================================================================================
# ver 0.11.0
