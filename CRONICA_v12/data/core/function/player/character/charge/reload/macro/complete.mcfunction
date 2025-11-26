# =================================================================================================

##【 IMPULSE 】

  ## プレイヤー管理

    # アイテム削除
      $function core:player/inventory/full_execute/func/clear_item/macro/run { TargetType : "ItemID", TargetID : "$(ItemID)"}
      $function core:player/inventory/full_execute/func/clear_item/macro/run { TargetType : "ItemID", TargetID : "$(AmmoID)"}

    # アイテム置き換え
      $scoreboard players set @s SCORE.cronica.MODE.$(ItemID) 0
      $scoreboard players set @s SCORE.cronica.MODE.$(AmmoID) 0
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/get

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
      $function core:player/character/charge/reload/macro/reset with storage cronica:config $(ItemID).CustomData.Reload
# =================================================================================================
# ver 0.12.0
