## ポジション

# スポーンポイント
execute as @a[tag=TAG.cronica.GAMING] at @s if block ~ ~ ~ minecraft:air run spawnpoint @s ~ ~ ~ ~

## ステータス

# 身体能力
effect give @a[tag=TAG.cronica.GAMING] minecraft:speed infinite 1 true
effect give @a[tag=TAG.cronica.GAMING] minecraft:jump_boost infinite 1 true
effect give @a[tag=TAG.cronica.GAMING] minecraft:health_boost infinite 4 true

# ジャンプ不可
#execute if entity @a[tag=TAG.cronica.STATUS.noJump] run function cronica:player/status/effect/no_jump/main
#execute if entity @a[tag=TAG.cronica.STATUS.noJump] run schedule function cronica:player/status/effect/no_jump/main 2t