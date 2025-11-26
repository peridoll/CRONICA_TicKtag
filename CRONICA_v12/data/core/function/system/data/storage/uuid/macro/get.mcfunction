# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常事項、マクロ、手動実行不可

  ## ストレージ管理

    # 初期化
      data remove storage cronica:temp GetUUID
      $data modify storage cronica:temp GetUUID.StorageName set value "$(StorageName)"

    # UUID取得
      data modify storage cronica:temp GetUUID.uuid_1 set from entity @s UUID[0]
      data modify storage cronica:temp GetUUID.uuid_2 set from entity @s UUID[1]
      data modify storage cronica:temp GetUUID.uuid_3 set from entity @s UUID[2]
      data modify storage cronica:temp GetUUID.uuid_4 set from entity @s UUID[3]

    # UUID結合
      function core:system/data/storage/uuid/macro/get_lib with storage cronica:temp GetUUID

    # 初期化
      data remove storage cronica:temp GetUUID
# =================================================================================================
# ver 0.12.0
