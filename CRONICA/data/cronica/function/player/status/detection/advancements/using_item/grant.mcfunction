
# ──────────────────────────────────────────────────────────────
# プレイヤーがアイテムを使用した際の実績検知・解除処理
#
# 【IMPULSE】
#   - インベントリ更新時に検知処理を実行
function cronica:player/status/detection/advancements/using_item/run
#
# 【REFRESH】
#   - 実績「using_item」を剥奪（リフレッシュ用）
advancement revoke @s only cronica:using_item
# ──────────────────────────────────────────────────────────────
# バージョン: 0.11.0
