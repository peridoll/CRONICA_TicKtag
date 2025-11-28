# =================================================================================================

##【 LOAD 】
# データパックロード時、リロード時に一度だけ実行される

  ## データ管理

    # ゲームルール設定
      function cronica:system/data/setting/gamerule

    # ステージ設定
      function cronica:world/stage/config

    # コンフィグ初期化
      execute unless entity @a run function cronica:system/data/scoreboard/config/remove
      function cronica:system/data/scoreboard/config/setup



  ## プレイヤー管理

    # 実績リセット
      execute as @a run function cronica:player/detection/advancement/revoke

    # 所持アイテム再付与
      execute as @a[tag = TAG.cronica.GAMING] run function cronica:player/inventory/full_execute/func/character_func/macro/run {Action:"library/leave"}



  ## 装飾

    # リロード完了時通知
      tellraw @a \
        [ \
          { "text": "[ ",                   "color": "dark_gray" }, \
          { "text": "INFO",                 "color": "gray"      }, \
          { "text": " ] ",                  "color": "dark_gray" }, \
          { "text": "リロードが完了しました", "color": "red",      "bold": true }  \
        ]
      tellraw @a \
        [ \
          { "text": "Created By",           "color": "gray"      }, \
          { "text": " ",                    "color": "white"     }, \
          { "text": "TicK-tag",             "color": "green",    "underlined": true } \
        ]
# =================================================================================================
# ver 0.13.0
