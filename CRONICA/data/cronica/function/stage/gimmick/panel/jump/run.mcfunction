# エフェクト付与
effect give @s minecraft:levitation 1 27 true

# スコア用意
scoreboard objectives add SCORE.cronica.TIMER.GimmickPanel.Jump dummy
scoreboard players add @s SCORE.cronica.TIMER.GimmickPanel.Jump 0

# ループ処理
schedule function cronica:stage/gimmick/panel/jump/library/main 1t