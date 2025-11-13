# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # ストレージ管理

      # ストレージ初期化
        data remove storage cronica:temp CharacterActivate

      # キャラクターデータ取得
        $function core:system/data/storage/character/macro/get { StorageName : "CharacterActivate", ItemID : "$(ItemID)" }

  ## アイテム置き換え

    # 使用済み形態取得
      function core:player/character/activate/macro/item_used with storage cronica:temp CharacterActivate

  ## クールタイム管理

    # クールタイム処理実行
      function core:player/character/activate/macro/ct/run with storage cronica:temp CharacterActivate

  ## データ管理

    # ストレージ管理

      # ストレージ初期化
        data remove storage cronica:temp CharacterActivate
# =================================================================================================
# ver 0.12.0
