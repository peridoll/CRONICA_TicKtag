# # =================================================================================================

# ##【 IMPULSE 】

#   ## データ管理

#     # スコア管理

#       # [ コンフィグ読み込み ]
#         $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/config

#       # [ モード用スコア設置 ]
#         $scoreboard objectives add SCORE.cronica.MODE.$(ItemID) dummy
#         $scoreboard players add @s SCORE.cronica.MODE.$(ItemID) 0

#     # ストレージ管理

#       # [ 初期化 ]
#         data remove storage cronica:temp CommonGet

#       # [ UUID取得 ]
#         # CommonGet.UUID にプレイヤーUUIDを取得
#         function cronica:system/data/storage/uuid/macro/get {StorageName: "CommonGet"}

#       # [ 基本パラメータ記入 ]
#         $data modify storage cronica:temp CommonGet.MasterID set value "$(MasterID)"
#         $data modify storage cronica:temp CommonGet.MasterType set value "$(MasterType)"
#         $data modify storage cronica:temp CommonGet.ItemID set value "$(ItemID)"

#   ## 対象のアイテムを入手

#     # 所持確認
#       # タグ TAG.cronica.INVENTORY."アイテムID".Has を付与する
#       function cronica:player/inventory/slot/macro/has_check with storage cronica:temp CommonGet

#     # 未所持の場合、アイテム入手
#       $execute if entity @s[tag =! TAG.cronica.INVENTORY.$(ItemID).Has] run \
#         function cronica:player/character/common/get/macro/default_loot with storage cronica:temp CommonGet

#     # アイテムステータス付与
#       # TODO: 戦闘機能を作る前には実施

#   ## 後続処理起動

#     # 常時検知処理起動
#       $schedule function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/boot/free_detect 1t

# ##【 REFRESH 】

#   ## データ管理

#     # タグ削除
#       $tag @s remove TAG.cronica.INVENTORY.$(ItemID).Has

#     # スコア削除
#       $scoreboard objectives remove SCORE.cronica.INVENTORY.$(ItemID).Count

#     # ストレージ削除
#       data remove storage cronica:temp CommonGet
# # =================================================================================================
# # ver 0.11.0
