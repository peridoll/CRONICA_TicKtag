# =================================================================================================
#
# 常時実行を管理する関数
# 各常在系の関数をここで呼び出す
#
# 一部関数は TAG.cronica.GAMING タグを持つプレイヤーがいる場合のみ実行される
# TAG.cronica.GAMING : ゲーム参加中のプレイヤーに付与されるタグ
#
# 2tick後のschedule
# scheduleコマンドは同コマンドを打つとscheduleがリセットされるため、毎tick実行している限りは実行されない
# そのため、TAG.cronica.GAMING タグを持つプレイヤーがいなくなった場合に一度だけ実行される (タグ持ちがいないため後続の発砲がない)
# 用途としてはスコアなどの撤去に使用する
#
# =================================================================================================

##【 初回実行 】
# 特定の条件下において一度だけ実行する
# 実行後にはその条件が外れるため、以降は実行されない

#【 サーバー参加時 】
execute as @a[gamemode=survival] run function cronica:system/join_server
# =================================================================================================

##【 常時実行 】
# 特定の条件下において常時実行する
# 身体能力やステージギミックの管理、行動検知などに使用する

#【 プレイヤー管理 】
# 身体能力や行動検知、使用するスキルなどもここから管理する
execute if entity @a[tag=TAG.cronica.GAMING] run function cronica:player/gaming_control

#【 ステージ管理 】
# ステージギミックや、ショップなどの管理をここから行う
execute if entity @a[tag=TAG.cronica.GAMING] run function cronica:stage/gimmick/main
# execute if entity @a[tag=TAG.cronica.GAMING] run schedule function cronica:stage/gimmick/main 2t
# =================================================================================================

## 今後各関数に割り振りたいが、とりあえずここにまとめる

# 腹減り無し TODO: 飯が食べられるように満腹じゃなく80%で維持できるように
effect give @a saturation infinite 1 true

# 矢の撤去
execute as @e[type=arrow] store result score @s SCORE.cronica.CONFIG run data get entity @s inGround
execute as @e[type=arrow, scores={SCORE.cronica.CONFIG=1}] run kill @s

# アイテム投げられん
execute as @e[type=minecraft:item] at @s if entity @p[gamemode=creative,distance=..2] run kill @s
execute as @e[type=minecraft:item] run data merge entity @s {PickupDelay:0}
execute as @e[type=minecraft:item] at @s run tp @s @p

# 経験値は増えない
execute as @e[type=minecraft:experience_orb] run kill @s
# =================================================================================================
