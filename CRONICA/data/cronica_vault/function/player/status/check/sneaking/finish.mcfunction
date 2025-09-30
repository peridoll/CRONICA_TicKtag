# =================================================================================================

##【 実行終了時処理 】
# 検知系の実行が終了したときの処理

#【 タグ管理 】
# タグ除去
tag @s remove TAG.cronica.STATUS.Sneaking

#【 スコア管理 】
# 使用済みのスコアをリセットし、使用者がいない場合は削除する
scoreboard players reset @s SCORE.cronica.STATUS.Sneaking
scoreboard players set @s SCORE.cronica.STATUS.Sneaked 0
execute unless entity @a[scores={SCORE.cronica.STATUS.Sneaking=0..}] run scoreboard objectives remove SCORE.cronica.STATUS.Sneaking
execute unless entity @a[scores={SCORE.cronica.STATUS.Sneaking=0..}] run scoreboard objectives remove SCORE.cronica.STATUS.Sneaked
# =================================================================================================
