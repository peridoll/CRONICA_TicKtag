# # =================================================================================================

# ##【 IMPULSE 】

#   ## ワールドセットアップ

#     # ゲームルール設定
#       function cronica:system/server/gamerule

#   ## データ管理

#     # コンフィグ初期化
#       execute unless entity @a run function cronica:system/data/scoreboard/config/remove
#       function cronica:system/data/scoreboard/config/setup

#   ## プレイヤー管理

#     # 実績リセット
#       execute as @a run function cronica:player/status/detection/advancements/revoke

#     # 所持アイテム再付与
#       execute as @a run function cronica:player/inventory/full_execute/func/character_func/macro/run {Action:"library/leave"}
#       execute as @a run function cronica:player/inventory/full_execute/func/character_func/macro/run {Action:"get"}

#   ## 装飾

#     # リロード通知
#       tellraw @a [{"text":"[","color":"dark_gray"},{"text":"INFO","color":"gray"},{"text":"] ","color":"dark_gray"},{"text":"リロードが完了しました","color":"red","bold":true}]
#       tellraw @a [{"text":"Created By ","color":"gray"},{"text":"TicK-tag","color":"green","underlined":true}]
# # =================================================================================================
# # ver 0.11.0
