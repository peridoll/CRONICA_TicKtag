# =================================================================================================

##【 REPEAT 】

  ## データ管理

    # ストレージ管理

      # ストレージ初期化
        data remove storage cronica:temp CoolTimeMain

    # キャラクター情報取得
      $function core:system/data/storage/character/macro/get { StorageName : "CoolTimeMain", ItemID : "$(ItemID)" }

  ## 後続処理呼び出し

    # クールタイムメイン
      function core:player/character/activate/macro/ct/main_lib with storage cronica:temp CoolTimeMain

  ## データ管理

    # ストレージ管理

      # ストレージ初期化
        data remove storage cronica:temp CoolTimeMain
# =================================================================================================
# ver 0.12.0
