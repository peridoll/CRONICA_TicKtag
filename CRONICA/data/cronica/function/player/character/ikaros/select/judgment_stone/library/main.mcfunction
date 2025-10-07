# =================================================================================================

# タイマー増加
scoreboard players add @a[scores={SCORE.cronica.TIMER.judgment_stone.ActivateTime=0..}] SCORE.cronica.TIMER.judgment_stone.ActivateTime 1

# 実行終了
execute as @a[scores={SCORE.cronica.TIMER.judgment_stone.ActivateTime=0..}] at @s run function cronica:player/character/ikaros/select/judgment_stone/library/finish

# ループ処理
execute if entity @a[scores={SCORE.cronica.TIMER.judgment_stone.ActivateTime=0..}] run schedule function cronica:player/character/ikaros/select/judgment_stone/library/main 1t
# =================================================================================================
