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

  ## ゲーム管理

    # 敵管理
      execute if entity @a[tag = TAG.cronica.GAMING] run function cronica:game/enemy/master
# =================================================================================================
# ver 0.13.0





# 負荷計算
# scoreboard objectives add SCORE.cronica.DEBUG.Tick dummy
# scoreboard objectives add SCORE.cronica.DEBUG.Time dummy

# execute as @a[tag = dev] store result score @s SCORE.cronica.DEBUG.Time run time query gametime
# scoreboard players add @a[tag = dev] SCORE.cronica.DEBUG.Tick 1
# execute as @a[tag = dev] if score @s SCORE.cronica.DEBUG.Tick matches 1 run scoreboard players operation @s SCORE.cronica.DEBUG.Tick = @s SCORE.cronica.DEBUG.Time
# execute as @a[tag = dev] unless score @s SCORE.cronica.DEBUG.Time = @s SCORE.cronica.DEBUG.Tick run say ERROR

# execute unless entity @a[tag = dev] run scoreboard objectives remove SCORE.cronica.DEBUG.Tick
# execute unless entity @a[tag = dev] run scoreboard objectives remove SCORE.cronica.DEBUG.Time










# =================================================================================================