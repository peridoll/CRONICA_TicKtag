# =================================================================================================
#
# CRONICA - LOAD
# サーバー開始時やリロード時に実行される関数
#
# =================================================================================================

##【 IMPULSE 】

  # スコア初期化 & コンフィグ読み込み
  # /* 初回起動時、管理スコアをリセットしコンフィグを読み込む */
    execute unless entity @a run function cronica:system/common/scoreboard/config/remove
    function cronica:system/common/scoreboard/config/setup

  # 実績リセット
  # /* リロード時、エラー回避のため取得済みの実績をすべて解除 */
    execute as @a run function cronica:player/status/detection/advancements/revoke

  # リロード通知
    tellraw @a [{"text":"[","color":"dark_gray"},{"text":"INFO","color":"gray"},{"text":"] ","color":"dark_gray"},{"text":"リロードが完了しました","color":"red","bold":true}]
    tellraw @a [{"text":"Created By ","color":"gray"},{"text":"TicK-tag","color":"green","underlined":true}]
# =================================================================================================
# ver 0.10.4
