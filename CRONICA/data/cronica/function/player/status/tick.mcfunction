# =================================================================================================

# リスポーンポイント管理
execute as @a[tag=TAG.cronica.GAMING,tag=!TAG.cronica.GAMING.spectate] at @s if block ~ ~ ~ minecraft:air run spawnpoint @s ~ ~ ~ ~

# 行動検知管理
function cronica:player/status/detection/tick

# エフェクト管理
execute as @a[tag=TAG.cronica.GAMING] run function cronica:player/status/effect/main
# =================================================================================================
