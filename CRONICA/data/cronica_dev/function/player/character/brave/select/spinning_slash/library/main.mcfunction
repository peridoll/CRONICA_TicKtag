# =================================================================================================

# タイマー増加
scoreboard players add @a[scores={SCORE.cronica_dev.TIMER.spinning_slash.ActivateTime=0..}] SCORE.cronica_dev.TIMER.spinning_slash.ActivateTime 1

# 実行終了
execute as @a[scores={SCORE.cronica_dev.TIMER.spinning_slash.ActivateTime=0..}] at @s run function cronica_dev:player/character/brave/select/spinning_slash/library/finish

# ループ処理
execute if entity @a[scores={SCORE.cronica_dev.TIMER.spinning_slash.ActivateTime=0..}] run schedule function cronica_dev:player/character/brave/select/spinning_slash/library/main 1t
# =================================================================================================
