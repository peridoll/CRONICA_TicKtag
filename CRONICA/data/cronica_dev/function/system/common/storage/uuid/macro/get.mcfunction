# =================================================================================================

##【 IMPULSE 】

  ## ストレージ管理

    # 初期化
      data modify storage cronica_dev:temp GetUUID.StorageName set value "$(StorageName)"

    # UUID取得
      data modify storage cronica_dev:temp GetUUID.uuid_1 set from entity @s UUID[0]
      data modify storage cronica_dev:temp GetUUID.uuid_2 set from entity @s UUID[1]
      data modify storage cronica_dev:temp GetUUID.uuid_3 set from entity @s UUID[2]
      data modify storage cronica_dev:temp GetUUID.uuid_4 set from entity @s UUID[3]

    # UUID結合
      function cronica_dev:system/common/storage/uuid/macro/connect with storage cronica_dev:temp GetUUID

    # 初期化
      data remove storage cronica_dev:temp GetUUID
# =================================================================================================
# ver 0.10.4
