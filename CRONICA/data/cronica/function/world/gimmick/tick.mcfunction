# =================================================================================================

# アクションパネル
function cronica:world/gimmick/action_panel/tick

# キャラクターコントロール
function cronica:world/gimmick/special_move/tick

# ケアパッケージ
# execute if entity @e[tag=TAG.cronica.MARKER.CarePackage] run schedule function cronica:stage/gimmick/carepackage/library/decolation 1t
# execute as @a[tag=TAG.cronica.GAMING,tag=TAG.cronica.STATUS.Sneaking] at @s unless block ~ ~-0.1 ~ air if entity @e[tag=TAG.cronica.MARKER.CarePackage,distance=..2] run function cronica:stage/gimmick/carepackage/library/charge
# =================================================================================================
