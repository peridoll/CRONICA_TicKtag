# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # モード用スコア設置
      $scoreboard objectives add SCORE.cronica_dev.MODE.$(ItemID) dummy
      $scoreboard players add @s SCORE.cronica_dev.MODE.$(ItemID) 0

  ## ストレージ取得

    # 初期化
      data remove storage cronica_dev:temp CommonGet

    # UUID取得 < CommonGet.UUIDを取得 >
      function cronica_dev:system/common/storage/uuid/macro/get {StorageName: "CommonGet"}

    # データ記入
      $data modify storage cronica_dev:temp CommonGet.MasterID \
        set value "$(MasterID)"
      $data modify storage cronica_dev:temp CommonGet.MasterType \
        set value "$(MasterType)"
      $data modify storage cronica_dev:temp CommonGet.ItemID \
        set value "$(ItemID)"

  ## 対象のアイテムを入手

    # 所持確認
      function cronica_dev:player/status/inventory/slot/macro/has_check with storage cronica_dev:temp CommonGet

    # アイテム入手
      $execute as @s[tag =! TAG.cronica_dev.INVENTORY.$(ItemID).Has] run \
        function cronica_dev:player/status/inventory/slot/load/macro/run with storage cronica_dev:temp CommonGet
      $execute as @s[tag =! TAG.cronica_dev.INVENTORY.$(ItemID).Has] run \
        loot give @s loot cronica_dev:character/$(MasterID)/$(MasterType)/$(ItemID)

##【 REFRESH 】

  # 状態初期化
    $tag @s remove TAG.cronica_dev.INVENTORY.$(ItemID).Has
    data remove storage cronica_dev:temp CommonGet
# =================================================================================================
# ver 0.10.4
