# =================================================================================================

# タイマー増加
scoreboard players add @a[scores={SCORE.cronica_dev.TIMER.blazing_shield.ActivateTime=0..}] SCORE.cronica_dev.TIMER.blazing_shield.ActivateTime 1

# 実行終了
execute as @a[scores={SCORE.cronica_dev.TIMER.blazing_shield.ActivateTime=0..}] at @s run function cronica_dev:player/character/ikaros/select/blazing_shield/library/finish

# ループ処理
execute if entity @a[scores={SCORE.cronica_dev.TIMER.blazing_shield.ActivateTime=0..}] run schedule function cronica_dev:player/character/ikaros/select/blazing_shield/library/main 1t
# =================================================================================================
