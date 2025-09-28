# =================================================================================================

##【 共通処理 】
# スニーク実行系共通の処理を行う

#【 キャンセル 】
# 各種条件に合わない場合は実行を中断する
execute as @a[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..},tag=!TAG.cronica.STATUS.Sneaking] run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/cancel
execute as @a[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] unless predicate cronica:grand run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/cancel
# 条件に合わない場合は、そもそもこの関数が呼ばれていないので、キャンセル用に自信を呼び出す予約をする
execute if entity @a[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] run schedule function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/main 2t

#【 スコア管理 】
# 実行用のスコアを管理し、増加させる
execute as @s run scoreboard objectives add SCORE.cronica.WEAPON.ApollonBow.Reloading dummy
execute as @s run scoreboard objectives add SCORE.cronica.WEAPON.ApollonBow.Reloaded dummy
execute as @s run scoreboard objectives add SCORE.cronica.WEAPON.ApollonBow.ReloadStack dummy
scoreboard players add @s SCORE.cronica.WEAPON.ApollonBow.Reloading 1
scoreboard players set @s SCORE.cronica.WEAPON.ApollonBow.Reloaded 1

#【 エフェクト付与 】
# スニーク実行中は移動ができなくなる
effect give @s slowness infinite 5 true

#【 タグ管理 】
# 実行中管理のためのタグを削除する
tag @s remove TAG.cronica.STATUS.Sneaking
# =================================================================================================

##【 実行管理 】
# 実行中断や完了などの呼び出しを行う

#【 キャンセル 】
# 各種条件に合わない場合は実行を中断する
execute as @s[tag=TAG.cronica.STATUS.ItemUsing] run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/cancel
execute as @s unless data storage cronica:context ItemID{Mainhand:"ApollonBow"} unless data storage cronica:context ItemID{Offhand:"ApollonBow"} run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/cancel

#【 スタック処理 】
# 一定割合ごとにスタックを増加させて画面に表示する
execute as @s if score @s SCORE.cronica.WEAPON.ApollonBow.Reloading >= #CONFIG.cronica.WEAPON.ApollonBow.ReloadStackTime SCORE.cronica.CONFIG run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/stack

#【 完了処理 】
# スタック数が最大になったらリロードを完了する
execute as @s[scores={SCORE.cronica.WEAPON.ApollonBow.ReloadStack=10..}] run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/complete
# =================================================================================================
