# タイマー増加
scoreboard players add @e[scores={SCORE.cronica.TIMER.GimmickPanel.Jump=0..}] SCORE.cronica.TIMER.GimmickPanel.Jump 1

# 終了
execute as @e[scores={SCORE.cronica.TIMER.GimmickPanel.Jump=10..}] at @s run function cronica:stage/gimmick/panel/jump/library/finish

# ループ処理
execute if entity @a[scores={SCORE.cronica.TIMER.GimmickPanel.Jump=0..}] run schedule function cronica:stage/gimmick/panel/jump/library/main 1t