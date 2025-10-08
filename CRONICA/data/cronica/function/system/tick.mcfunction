# =================================================================================================

# サーバー参加時
execute as @a[gamemode=survival] run function cronica:system/preparation/join_server

# プレイヤー管理
execute if entity @a[tag=TAG.cronica.GAMING] run function cronica:player/status/tick

# ワールド管理
execute if entity @a[tag=TAG.cronica.GAMING] run function cronica:world/gimmick/tick
# function cronica:system/menu/tick
# =================================================================================================
