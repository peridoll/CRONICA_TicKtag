# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # モード用スコア設置
      $scoreboard objectives add SCORE.cronica_dev.MODE.$(ItemID) dummy
      $scoreboard players add @s SCORE.cronica_dev.MODE.$(ItemID) 0

  ## ストレージ取得

    # 初期化
      data remove storage cronica_dev:temp GetCommon

    # UUID取得 < GetCommon.UUIDを取得 >
      function cronica_dev:system/common/storage/uuid/macro/get {StorageName: "GetCommon"}

    # データ記入
      $data modify storage cronica_dev:temp GetCommon.MasterID \
        set value "$(MasterID)"
      $data modify storage cronica_dev:temp GetCommon.MasterType \
        set value "$(MasterType)"
      $data modify storage cronica_dev:temp GetCommon.ItemID \
        set value "$(ItemID)"

  ## 対象のアイテムを入手

    # 所持確認
      function cronica_dev:player/status/inventory/slot/macro/has_check with storage cronica_dev:temp GetCommon

    # アイテム入手
      $execute as @s[tag =! TAG.cronica_dev.INVENTORY.$(ItemID).Has] run \
        function cronica_dev:player/status/inventory/slot/load/macro/run with storage cronica_dev:temp GetCommon
      $execute as @s[tag =! TAG.cronica_dev.INVENTORY.$(ItemID).Has] run \
        loot give @s loot cronica_dev:character/$(MasterID)/$(MasterType)/$(ItemID)

##【 REFRESH 】

  # 状態初期化
    $tag @s remove TAG.cronica_dev.INVENTORY.$(ItemID).Has
    data remove storage cronica_dev:temp GetCommon
# =================================================================================================
# ver 0.10.4
