# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # タグ管理
      tag @s remove TAG.cronica.CT_ZERO
      tag @s remove TAG.cronica.GAMING
      tag @s remove TAG.cronica.GAMING.spectate
      tag @s remove TAG.cronica.GAMING.practice

  ## プレイヤー管理

    # ゲームモード
      gamemode adventure @s

    # レベル管理
      xp set @s 0 levels
      xp set @s 0 points

    # キャラクター関連リセット
      # function cronica:player/inventory/full_execute/func/character_func/macro/run {Action: "library/leave"}

    # エフェクト
      effect clear @s
      effect give @s minecraft:saturation infinite 100 true
      effect give @s minecraft:instant_health infinite 100 true
      effect give @s minecraft:resistance infinite 100 true
      effect give @s minecraft:night_vision infinite 0 true

    # インベントリ
      clear @s
      # function cronica:player/inventory/kit/lobby

  ## ワールド管理

    # メインロビーへテレポート
      # function cronica:world/stage/lobby/get_position/enter
      # function cronica:world/common/macro/teleport with storage cronica:temp Position

  ## 装飾

    # サウンド
      execute at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 10 1

    # パーティクル
      execute at @s run particle minecraft:entity_effect{color: [0.0, 1.0, 1.0, 0.7]} ^ ^1 ^2 1 1 1 1 200 force @s
      execute at @s run particle minecraft:entity_effect{color: [1.0, 0.0, 1.0, 0.7]} ^ ^1 ^2 1 1 1 1 200 force @s
      execute at @s run particle minecraft:entity_effect{color: [1.0, 1.0, 0.0, 0.7]} ^ ^1 ^2 1 1 1 1 200 force @s
      execute at @s run particle minecraft:entity_effect{color: [0.0, 1.0, 0.0, 0.7]} ^ ^1 ^2 1 1 1 1 200 force @s

    # 場所の通知
      title @s times 15 60 15
      title @s title [{"text":" "}]
      title @s subtitle [{"text":"-","color":"gray","bold":false},{"text":"Main Lobby","color":"gold","bold":false},{"text":"-","color":"gray","bold":false}]
      title @s actionbar ""
# =================================================================================================
# ver 0.12.0
