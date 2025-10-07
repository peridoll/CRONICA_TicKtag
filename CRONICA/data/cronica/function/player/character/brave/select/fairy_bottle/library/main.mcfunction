# =================================================================================================

# タイマー増加
scoreboard players add @a[scores={SCORE.cronica.TIMER.fairy_bottle.ActivateTime=0..}] SCORE.cronica.TIMER.fairy_bottle.ActivateTime 1

# 実行終了
execute as @a[scores={SCORE.cronica.TIMER.fairy_bottle.ActivateTime=0..}] at @s run function cronica:player/character/brave/select/fairy_bottle/library/finish

# ループ処理
execute if entity @a[scores={SCORE.cronica.TIMER.fairy_bottle.ActivateTime=0..}] run schedule function cronica:player/character/brave/select/fairy_bottle/library/main 1t
# =================================================================================================
