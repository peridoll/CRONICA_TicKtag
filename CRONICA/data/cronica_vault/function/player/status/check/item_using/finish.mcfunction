# =================================================================================================
## Ikaros:ApollonBow
execute if score @s SCORE.cronica.WEAPON.ApollonBow.Shooting matches 1.. if data storage cronica:context ItemID{Offhand:"ApollonBow"} run function cronica:player/character/list/ikaros/unique/apollon_bow/library/shoot
execute if score @s SCORE.cronica.WEAPON.ApollonBow.Shooting matches 1.. if data storage cronica:context ItemID{Mainhand:"ApollonBow"} run function cronica:player/character/list/ikaros/unique/apollon_bow/library/shoot
# =================================================================================================

##【 実行終了時処理 】
# 検知系の実行が終了したときの処理

#【 タグ管理 】
# タグ除去
tag @s remove TAG.cronica.STATUS.ItemUsing

#【 スコア管理 】
# 使用済みのスコアをリセットし、使用者がいない場合は削除する
scoreboard players reset @s SCORE.cronica.STATUS.ItemUsing
scoreboard players set @s SCORE.cronica.STATUS.ItemUsed 0
execute unless entity @a[scores={SCORE.cronica.STATUS.ItemUsing=0..}] run scoreboard objectives remove SCORE.cronica.STATUS.ItemUsing
execute unless entity @a[scores={SCORE.cronica.STATUS.ItemUsing=0..}] run scoreboard objectives remove SCORE.cronica.STATUS.ItemUsed
# =================================================================================================
