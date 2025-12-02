# =================================================================================================

##【 TICK 】
# 毎ティック常時実行される

  ## プレイヤー管理

    # サーバー参加時処理
      execute as @a[gamemode = survival] run function cronica:system/join_server

    # ステータス管理
      execute if entity @a run function cronica:player/status/tick

    # 行動管理
      execute if entity @a run function cronica:player/action/tick

  ## ワールド管理

    # ステージギミック管理
      execute if entity @a[tag = TAG.cronica.GAMING] run function cronica:world/gimmick/tick
# =================================================================================================
# ver 0.13.0
