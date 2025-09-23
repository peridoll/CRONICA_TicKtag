# =================================================================================================

##【 共通処理 】
# スニーク実行系共通の処理を行う

#【 エフェクト削除 】
# 移動制限用のエフェクトを削除する
effect clear @s slowness
# =================================================================================================

##【 実行処理 】
# リロード中断時の処理を行う

#【 メッセージ表示 】
# アクションバーにリロード中断のメッセージを表示する
title @s times 0 60 20
title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"CANCEL","color":"green","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]

#【 スコアリセット 】
# 各種リロード用のスコアをリセットする
function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/reset
# =================================================================================================
