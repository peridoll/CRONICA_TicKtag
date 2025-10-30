# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # モード用スコア設置
      $scoreboard objectives add SCORE.cronica.MODE.$(ItemID) dummy
      $scoreboard players add @s SCORE.cronica.MODE.$(ItemID) 0

  ## ストレージ取得

    # 初期化
      data remove storage cronica:temp CommonGet

    # UUID取得
      function cronica:system/data/storage/uuid/macro/get {StorageName: "CommonGet"}

    # データ記入
      $data modify storage cronica:temp CommonGet.MasterID \
        set value "$(MasterID)"
      $data modify storage cronica:temp CommonGet.MasterType \
        set value "$(MasterType)"
      $data modify storage cronica:temp CommonGet.ItemID \
        set value "$(ItemID)"

  ## 対象のアイテムを入手

    # 所持確認
      function cronica:player/inventory/slot/macro/has_check with storage cronica:temp CommonGet

    # アイテム入手
      $execute as @s[tag =! TAG.cronica.INVENTORY.$(ItemID).Has] run \
        function cronica:player/inventory/slot/loading_slot/macro/run with storage cronica:temp CommonGet
      $execute as @s[tag =! TAG.cronica.INVENTORY.$(ItemID).Has] run \
        loot give @s loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)

##【 REFRESH 】

  # 状態初期化
    $tag @s remove TAG.cronica.INVENTORY.$(ItemID).Has
    data remove storage cronica:temp CommonGet
# =================================================================================================
# ver 0.11.0
