# =================================================================================================

##【 共通処理 】
# スニーク実行系共通の処理を行う

#【 エフェクト削除 】
# 移動制限用のエフェクトを削除する
effect clear @s slowness
# =================================================================================================

##【 実行処理 】
# リロード中断時の処理を行う

#【 アイテム取得 】
# 弾薬アイテムを補充する
function cronica:player/status/item_data/free_replace {ItemID:"ApollonArrow", Address:"character/ikaros/unique/apollon_arrow", Model:"default"}

#【 サウンド再生 】
# アイテム取得音を再生する
execute at @s run playsound item.armor.equip_iron player @s ~ ~ ~ 3 2

#【 メッセージ表示 】
# アクションバーにリロード中断のメッセージを表示する
title @s times 1 60 20
title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"COMPLETE","color":"green","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]

#【 スコアリセット 】
# 各種リロード用のスコアをリセットする
function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/reset
# =================================================================================================
