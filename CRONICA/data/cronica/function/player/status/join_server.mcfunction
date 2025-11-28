# =================================================================================================

##【 IMPULSE 】

  ## スコアボード管理

    # パーソナルナンバー登録
      function cronica:system/data/scoreboard/personal_number/setup

  ## プレイヤー管理

    # タグ管理
      tag @s remove TAG.cronica.CT_HANDICAP

    # メインロビーへテレポート
      function cronica:world/teleport/to_lobby

    # サーバー参加時通知
      title @s title [{"text":"<<","color":"gray","bold":false},{"text":" CRONICA ","color":"green","bold":true},{"text":">>","color":"gray","bold":false}]
      title @s subtitle [{"text":"Presented By TicK-tag"}]
# =================================================================================================
# ver 0.13.0
