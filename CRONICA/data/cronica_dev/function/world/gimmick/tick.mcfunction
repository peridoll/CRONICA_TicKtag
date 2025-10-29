# =================================================================================================

# アクションパネル
function cronica_dev:world/gimmick/action_panel/tick

# キャラクターコントロール
function cronica_dev:world/gimmick/special_move/tick

# ケアパッケージ
# execute if entity @e[tag=TAG.cronica_dev.MARKER.CarePackage] run schedule function cronica_dev:stage/gimmick/carepackage/library/decolation 1t
# execute as @a[tag=TAG.cronica_dev.GAMING,tag=TAG.cronica_dev.STATUS.Sneaking] at @s unless block ~ ~-0.1 ~ air if entity @e[tag=TAG.cronica_dev.MARKER.CarePackage,distance=..2] run function cronica_dev:stage/gimmick/carepackage/library/charge
# =================================================================================================
