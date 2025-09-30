
##【 スコアボード設置 】
# コンフィグ用のスコアボードを設置する

#【 スコア用意 】
# ゲーム中でないのなら、スコアを初期化する
execute unless entity @a run scoreboard objectives remove SCORE.cronica.CONFIG
scoreboard objectives add SCORE.cronica.CONFIG dummy

#【 定数用意 】
# 計算に使用する定数を用意する
scoreboard players set #10 SCORE.cronica.CONFIG 10
scoreboard players set #20 SCORE.cronica.CONFIG 20
scoreboard players set #100 SCORE.cronica.CONFIG 100

#【 コンフィグ読み込み 】
# キャラクターやスキル関連のコンフィグを読み込みなおす
# function cronica:player/character/list/brave/config
function cronica:player/character/list/ikaros/config
