# =================================================================================================

# タイマー増加
scoreboard players add @a[scores={SCORE.cronica.TIMER.hook_shot.ActivateTime=0..}] SCORE.cronica.TIMER.hook_shot.ActivateTime 1

# 実行終了
execute as @a[scores={SCORE.cronica.TIMER.hook_shot.ActivateTime=0..}] at @s run function cronica:player/character/brave/select/hook_shot/library/finish

# ループ処理
execute if entity @a[scores={SCORE.cronica.TIMER.hook_shot.ActivateTime=0..}] run schedule function cronica:player/character/brave/select/hook_shot/library/main 1t
# =================================================================================================
