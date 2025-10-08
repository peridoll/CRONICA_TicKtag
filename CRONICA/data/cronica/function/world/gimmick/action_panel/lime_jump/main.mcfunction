# =================================================================================================

# スコア管理
scoreboard players add @e[scores={SCORE.cronica.TIMER.jump_panel.ActivateTime=0..}] SCORE.cronica.TIMER.jump_panel.ActivateTime 1

# 終了
execute as @e[scores={SCORE.cronica.TIMER.jump_panel.ActivateTime=10..}] at @s run function cronica:world/gimmick/action_panel/lime_jump/finish

# ループ処理
execute if entity @a[scores={SCORE.cronica.TIMER.jump_panel.ActivateTime=0..}] run schedule function cronica:world/gimmick/action_panel/lime_jump/main 1t
# =================================================================================================
