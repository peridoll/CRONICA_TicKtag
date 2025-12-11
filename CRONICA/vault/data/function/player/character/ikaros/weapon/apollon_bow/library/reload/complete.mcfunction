# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.STATUS.IsSneaking

  ## プレイヤー管理

    # アイテム削除
      function cronica:player/inventory/full_execute/func/clear_item/macro/run { TargetType : "ItemID", TargetID : "apollon_arrow"}

    # アイテム置き換え
      scoreboard players set @s SCORE.cronica.MODE.apollon_arrow 0
      function cronica:player/character/ikaros/weapon/apollon_arrow/get

  ## 画面表示

    # コンプリート表示
      title @s times 0 60 20
      title @s actionbar \
        [\
          {"text":"RELOAD","color":"gray","bold":false},\
            {"text":"[","color":"dark_green","bold":false},\
              {"text":"COMPLETE","color":"green","bold":true,"underlined":true},\
            {"text":"]","color":"dark_green","bold":false},\
          {"text":"RELOAD","color":"gray","bold":false}\
        ]

  ## 後続処理

    # スコアリセット
      function cronica:player/character/ikaros/weapon/apollon_bow/library/reload/reset
# =================================================================================================
# ver 0.13.0
