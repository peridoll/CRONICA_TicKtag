# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # タグ管理
      tag @s add TAG.cronica.GAMING
      tag @s add TAG.cronica.GAMING.practice

  ## プレイヤー管理
    # ゲームモード
      gamemode adventure @s

    # レベル管理
      xp set @s 999 levels
      xp set @s 0 points

    # エフェクト
      effect clear @s
      effect give @s minecraft:night_vision infinite 0 true

    # インベントリ
      clear @s
      function cronica:player/inventory/kit/free_battle

  ## ワールド管理

    # 練習場へテレポート
      function cronica:world/stage/practice_area/get_position/enter
      function cronica:world/common/macro/teleport with storage cronica:temp Position

  ## 装飾

    # サウンド
      execute at @s run playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 10 1

    # パーティクル
      execute at @s run particle minecraft:composter ^ ^1 ^2 1 1 1 1 200 normal @s

    # 場所の通知
      title @s times 15 60 15
      title @s title [{"text":" "}]
      title @s subtitle [{"text":"-","color":"gray","bold":false},{"text":"Practice Area","color":"gold","bold":false},{"text":"-","color":"gray","bold":false}]
      title @s actionbar ""
# =================================================================================================
# ver 0.11.0
