# =================================================================================================

## CRONICA - tick.mcfunction
# 毎ティック実行される関数

##【 起動処理 】

  # サーバー参加時
    execute as @a[gamemode = survival] run function cronica_dev:system/join_server

##【 継続処理 】

  # プレイヤー管理
    function cronica_dev:player/status/tick

  # ワールド管理
    execute if entity @a[tag = TAG.cronica_dev.GAMING] run function cronica_dev:world/gimmick/tick
# =================================================================================================
# ver 0.10.3



# =================================================================================================

## 今後各関数に割り振りたいが、とりあえずここにまとめる

  # 腹減り無し TODO: 飯が食べられるように満腹じゃなく80%で維持できるように
    effect give @a saturation infinite 1 true

  # 矢の撤去 TODO: 即消しではなく、しばらく残るように
    execute as @e[type = arrow] store result score @s SCORE.cronica_dev.CONFIG run data get entity @s inGround
    execute as @e[type = arrow, scores = {SCORE.cronica_dev.CONFIG = 1}] run kill @s

  # アイテム投げられん
    execute as @e[type = minecraft:item] at @s if entity @p[gamemode = creative, distance = ..2] run kill @s
    execute as @e[type = minecraft:item] run data merge entity @s {PickupDelay:0}
    execute as @e[type = minecraft:item] at @s run tp @s @p

  # 経験値は増えない
    execute as @e[type = minecraft:experience_orb] run kill @s
# =================================================================================================
