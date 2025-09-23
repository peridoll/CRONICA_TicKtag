# =================================================================================================

##【 実行検知 】
# プレイヤーがスニーク状態であることを管理する

#【 スコア設置 】
# Sneaking: スニーク状態である限り上昇し続ける
# Sneaked: 終了検知用
scoreboard objectives add SCORE.cronica.STATUS.Sneaking dummy
scoreboard objectives add SCORE.cronica.STATUS.Sneaked dummy
scoreboard players add @s[tag=TAG.cronica.GAMING] SCORE.cronica.STATUS.Sneaking 1
scoreboard players set @s[tag=TAG.cronica.GAMING] SCORE.cronica.STATUS.Sneaked 1

#【 実行中タグ付与 】
# このタグが付いている限り、スニーク状態であると判定される
tag @s add TAG.cronica.STATUS.Sneaking
# =================================================================================================
