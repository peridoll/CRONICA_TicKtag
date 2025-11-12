# =================================================================================================

##【 TICK 】
# 常時実行

  ## プレイヤー管理

    # サーバー参加時処理
      execute as @a[gamemode = survival] run function core:player/status/join_server

    # 行動検知管理
      # function cronica:player/status/detection/master

    # エフェクト管理
      # execute as @a[tag = TAG.cronica.GAMING] run function cronica:player/status/effect/master
# =================================================================================================
# ver 0.12.0





# =================================================================================================

## 今後各関数に割り振りたいが、とりあえずここにまとめる

  # 腹減り無し TODO: 飯が食べられるように満腹じゃなく80%で維持できるように
    effect give @a saturation infinite 1 true

  # 矢の撤去 TODO: 即消しではなく、しばらく残るように
    execute as @e[type = arrow] store result score @s SCORE.cronica.CONFIG run data get entity @s inGround
    execute as @e[type = arrow, scores = {SCORE.cronica.CONFIG = 1}] run kill @s

  # アイテム投げられん
    execute as @e[type = minecraft:item] at @s if entity @p[gamemode = creative, distance = ..2] run kill @s
    execute as @e[type = minecraft:item] run data merge entity @s {PickupDelay:0}
    execute as @e[type = minecraft:item] at @s run tp @s @p

  # 経験値は増えない
    execute as @e[type = minecraft:experience_orb] run kill @s
# =================================================================================================
