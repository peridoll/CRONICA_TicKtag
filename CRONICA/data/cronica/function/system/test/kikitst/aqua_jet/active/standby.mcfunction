#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
#◆◇◆◇◆水流弾:チェック◆◇◆◇◆

#-=active実行=-

#更新状況 ver 3.0.2

#player/skill/aqua_jet/active/standby

#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
# ◆◇:チェック:◇◆

## <発動処理>
#[トーテム管理]
tag @e[tag=MARKER_of_AQUA_JET_empty] remove MARKER_of_AQUA_JET_empty
#[タグ管理]
tag @s remove TAG.aqua_jet.HIT
#[スタン]
execute as @a[tag=TAG.aqua_jet.HIT] run scoreboard objectives add SCORE_TIMER.stun.TIMER dummy "スタンタイマー"
execute as @a[tag=TAG.aqua_jet.HIT] run scoreboard players add @s SCORE_TIMER.stun.TIMER 0
execute as @a[tag=TAG.aqua_jet.HIT] if score @s SCORE_TIMER.stun.TIMER < #aqua_jet:STUN CONFIG run scoreboard players operation @s SCORE_TIMER.stun.TIMER = #aqua_jet:STUN CONFIG
execute as @a[tag=TAG.aqua_jet.HIT] run schedule function cronica:player/status/effect/stun/main 1t
execute as @a[tag=TAG.aqua_jet.HIT] run tag @s remove TAG.aqua_jet.HIT

## <状態処理>
execute as @s run scoreboard players reset @s SCORE_DATA.aqua_jet.STACK
execute unless entity @a[scores={SCORE_DATA.aqua_jet.STACK=0..}] run scoreboard objectives remove SCORE_DATA.aqua_jet.STACK
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■