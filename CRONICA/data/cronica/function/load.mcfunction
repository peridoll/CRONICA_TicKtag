# =================================================================================================
#
# サーバー起動時に一度だけ実行される管理用関数
# Reload時にも実行される
#
# おおもとの管理用スコアや検知系のリセットに使用する
#
# =================================================================================================

##【 ワールド設定 】
# ワールド生成時に設定を初期化する

#【 ゲームルール 】
# ゲームルールの設定を初期化
execute unless entity @a run function cronica:system/gamerule

#【 スコア設置 】
# リロードのたびにも更新がかかる
execute unless entity @a run function cronica:system/scoreboard/delete
function cronica:system/scoreboard/setup_config
# =================================================================================================

##【 プレイヤー管理 】

#【 Advancement初期化 】
# 検知用の実績をリセットする
execute as @a run function cronica:system/advancements/reset
# =================================================================================================

##【 通知 】
# リロード時に全プレイヤーに通知を送る

#【 リロード完了 】
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"INFO","color":"gray"},{"text":"] ","color":"dark_gray"},{"text":"リロードが完了しました","color":"red","bold":true}]
tellraw @a [{"text":"Created By ","color":"gray"},{"text":"TicK-tag","color":"green","underlined":true}]
# =================================================================================================
