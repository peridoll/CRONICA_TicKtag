# =================================================================================================

##【 MACRO IMPULSE 】
# 手動実行不可, 単数実行

  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
  #
  # UUID-Get-Macro 関数
  #
  # 引数：
  #   StorageName : ストレージ名 ( CharacterGet / ... )
  #
  # 処理：
  #   指定されたストレージにUUIDを取得し、記入する
  #
  # Doc:v1
  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/



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
      function cronica:system/data/storage/uuid/macro/get_lib with storage cronica:temp GetUUID

    # 初期化
      data remove storage cronica:temp GetUUID
# =================================================================================================
# ver 0.13.0
