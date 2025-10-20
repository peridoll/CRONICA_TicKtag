# =================================================================================================
#
# CRONICA - Ikaros - Flying Feather
#
# run
# |
# main
# └─ stop_ceiling
# └─ stop_stun
# └─ flaping
# └─ finish
#   └─ reset
# |
# ct
#
# =================================================================================================

##【 REPEAT 】

  # タイマー増加
    scoreboard players add @a[scores = {SCORE.cronica.TIMER.flying_feather.ActivateTime = 0..}] SCORE.cronica.TIMER.flying_feather.ActivateTime 1

  # エフェクト管理
    effect clear @a[scores = {SCORE.cronica.TIMER.flying_feather.ActivateTime = 10}] minecraft:levitation
    effect give @a[scores = {SCORE.cronica.TIMER.flying_feather.ActivateTime = 0..19}, tag = TAG.cronica.GAMING] minecraft:slow_falling infinite 0 true

  # 中断
    execute \
        as @a[scores = {SCORE.cronica.TIMER.flying_feather.ActivateTime = 0..19}] \
          at @s unless block ~ ~2.1 ~ #cronica:no_collision \
      run \
        function cronica:player/character/ikaros/select/flying_feather/library/stop_ceiling
    execute \
        as @a[scores = {SCORE.cronica.TIMER.flying_feather.ActivateTime = 0..}, tag = TAG.cronica.STUNNING] \
      run \
        function cronica:player/character/ikaros/select/flying_feather/library/stop_stun

  # 装飾
    execute as @a[scores = {SCORE.cronica.TIMER.flying_feather.ActivateTime = 20}] at @s run \
      function cronica:player/character/ikaros/select/flying_feather/library/flaping
    execute as @a[scores = {SCORE.cronica.TIMER.flying_feather.ActivateTime = 25}] at @s run \
      function cronica:player/character/ikaros/select/flying_feather/library/flaping
    execute as @a[scores = {SCORE.cronica.TIMER.flying_feather.ActivateTime = 30}] at @s run \
      function cronica:player/character/ikaros/select/flying_feather/library/flaping

  # 実行終了
    execute as @a[scores = {SCORE.cronica.TIMER.flying_feather.ActivateTime = 30..}] at @s run \
      function cronica:player/character/ikaros/select/flying_feather/library/finish

  # リセット
    execute as @a[scores = {SCORE.cronica.TIMER.flying_feather.ActivateTime = 0..}, tag =! TAG.cronica.GAMING] run \
      function cronica:player/character/ikaros/select/flying_feather/library/reset

  # ループ処理
    execute if entity @a[scores = {SCORE.cronica.TIMER.flying_feather.ActivateTime = 0..}] run \
      schedule function cronica:player/character/ikaros/select/flying_feather/library/main 1t
# =================================================================================================
# ver 0.10.3
