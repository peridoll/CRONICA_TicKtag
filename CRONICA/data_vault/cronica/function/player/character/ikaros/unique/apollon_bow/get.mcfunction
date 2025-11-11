# # =================================================================================================

# ##【 IMPULSE 】

#   ## アイテム入手

#     # 共通処理により入手
#       function cronica:player/character/common/get/macro/get {ItemID: "apollon_bow",   MasterID: "ikaros", MasterType: "unique" }
#       function cronica:player/character/common/get/macro/get {ItemID: "apollon_arrow", MasterID: "ikaros", MasterType: "unique" }

#   ## アイテムモデル変更

#     # 基本形態
#       execute if score @s SCORE.cronica.MODE.apollon_bow matches 0 run \
#         function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_bow",   Model: "common/weapon/default" }
#       execute if score @s SCORE.cronica.MODE.apollon_arrow matches 0 run \
#         function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_arrow", Model: "common/weapon/ammo/arrow_default" }

#     # 使用済み
#       execute if score @s SCORE.cronica.MODE.apollon_arrow matches -1 run \
#         function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_arrow", Model: "common/weapon/ammo/used" }

#     # モードチェンジ：黄昏
#       execute if score @s SCORE.cronica.MODE.apollon_bow matches 1 run \
#         function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_bow",   Model: "character/ikaros/unique/apollon_bow/twilight" }
#       execute if score @s SCORE.cronica.MODE.apollon_bow matches 1 run \
#         function cronica:player/character/common/get/macro/mode_change {ItemID: "apollon_arrow", Model: "character/ikaros/unique/apollon_bow/twilight" }
# # =================================================================================================
# # ver 0.11.1
