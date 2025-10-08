# =================================================================================================

# エフェクト付与
effect give @s minecraft:levitation 1 27 true

# スコア用意
scoreboard objectives add SCORE.cronica.TIMER.jump_panel.ActivateTime dummy
scoreboard players add @s SCORE.cronica.TIMER.jump_panel.ActivateTime 0

# ループ処理
schedule function cronica:world/gimmick/action_panel/lime_jump/main 1t
# =================================================================================================
