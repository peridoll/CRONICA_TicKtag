# =================================================================================================

##【 実行検知 】
# プレイヤーがアイテム実行中であることを管理する

#【 スコア設置 】
# ItemUsing: アイテム実行中である限り上昇し続ける
# ItemUsed: 終了検知用
scoreboard objectives add SCORE.cronica.STATUS.ItemUsing dummy
scoreboard objectives add SCORE.cronica.STATUS.ItemUsed dummy
scoreboard players add @s[tag=TAG.cronica.GAMING] SCORE.cronica.STATUS.ItemUsing 1
scoreboard players set @s[tag=TAG.cronica.GAMING] SCORE.cronica.STATUS.ItemUsed 1

#【 実行中タグ付与 】
# このタグが付いている限り、アイテム使用中であると判定される
tag @s add TAG.cronica.STATUS.ItemUsing

#【 アイテム実行管理用関数呼び出し 】
# 一拍の遅延がかかってしまうので、ここで呼び出す
execute as @s[tag=TAG.cronica.GAMING] if score @s SCORE.cronica.STATUS.ItemUsing matches 1 run function cronica:player/status/check/item_using/main

#【 Advancement解除 】
# 実績は一度取得すると解除できないため、使用中は常に解除する
advancement revoke @s only cronica:player/using_item
# =================================================================================================
