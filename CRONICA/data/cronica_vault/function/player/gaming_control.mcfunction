# =================================================================================================

##【 プレイヤー管理 】

#【 スポーンポイント 】
# 死亡時のリスポーン地点を再設定する
execute as @a[tag=TAG.cronica.GAMING] at @s if block ~ ~ ~ minecraft:air run spawnpoint @s ~ ~ ~ ~

#【 身体能力 】
# 戦闘時の基礎身体能力を強化する
effect give @a[tag=TAG.cronica.GAMING] minecraft:speed infinite 1 true
effect give @a[tag=TAG.cronica.GAMING] minecraft:jump_boost infinite 1 true
effect give @a[tag=TAG.cronica.GAMING] minecraft:health_boost infinite 4 true
# =================================================================================================

##【 行動検知 】
# アイテムの使用やスニーク状態など、特定の行動を検知する

#【 使用検知 】
# アイテムの使用を検知する
execute as @a[tag=TAG.cronica.GAMING] if score @s SCORE.cronica.STATUS.ItemUsing matches 2.. run function cronica:player/status/check/item_using/main

#【 スニーク判定 】
# スニーク状態を検知する
# 行動が実行されると、タグが外れてその後の処理が実行されなくなるため、記入する順番で優先度を指定できる
execute as @a[tag=TAG.cronica.GAMING] if predicate cronica:sneak run function cronica:player/status/check/sneaking/check
execute as @a[tag=TAG.cronica.GAMING] if score @s SCORE.cronica.STATUS.Sneaking matches 0.. run function cronica:player/status/check/sneaking/main
# =================================================================================================
