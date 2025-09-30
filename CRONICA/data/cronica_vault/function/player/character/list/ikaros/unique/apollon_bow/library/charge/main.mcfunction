# =================================================================================================

##【 共通処理 】
# スニーク実行系共通の処理を行う

#【 スコア管理 】
# 実行用のスコアを管理し、増加させる
execute as @s run scoreboard objectives add SCORE.cronica.WEAPON.ApollonBow.Charging dummy
execute as @s run scoreboard objectives add SCORE.cronica.WEAPON.ApollonBow.Charged dummy
execute as @s run scoreboard objectives add SCORE.cronica.WEAPON.ApollonBow.Shooting minecraft.used:minecraft.bow
scoreboard players add @s SCORE.cronica.WEAPON.ApollonBow.Charging 1
scoreboard players set @s SCORE.cronica.WEAPON.ApollonBow.Charged 1

#【 キャンセル 】
# 各種条件に合わない場合は実行を中断する
execute as @a[scores={SCORE.cronica.WEAPON.ApollonBow.Charging=0..},tag=!TAG.cronica.STATUS.ItemUsing] run function cronica:player/character/list/ikaros/unique/apollon_bow/library/charge/cancel
# 条件に合わない場合は、そもそもこの関数が呼ばれていないので、キャンセル用に自信を呼び出す予約をする
execute if entity @a[scores={SCORE.cronica.WEAPON.ApollonBow.Charging=0..}] run schedule function cronica:player/character/list/ikaros/unique/apollon_bow/library/charge/main 2t

#【 タグ管理 】
# 実行中管理のためのタグを削除する
tag @s remove TAG.cronica.STATUS.ItemUsing
# =================================================================================================

##【 実行管理 】
# 実行中断や完了などの呼び出しを行う

#【 キャンセル 】
# 各種条件に合わない場合は実行を中断する
execute unless data storage cronica:context ItemID{Mainhand:"ApollonBow"} unless data storage cronica:context ItemID{Offhand:"ApollonBow"} run function cronica:player/character/list/ikaros/unique/apollon_bow/library/charge/cancel

#【 完了処理 】
# チャージが完了したら武器が進化する
# execute if score @s SCORE.cronica.WEAPON.ApollonBow.Charging >= #CONFIG.cronica.WEAPON.ApollonBow.ChargeTwilightTime SCORE.cronica.CONFIG run function cronica:player/character/list/ikaros/unique/apollon_bow/library/charge/finish
# =================================================================================================
