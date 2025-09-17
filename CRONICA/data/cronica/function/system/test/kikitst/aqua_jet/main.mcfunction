#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
#◆◇◆◇◆水流弾:メイン◆◇◆◇◆

#-=loop実行=-

#更新状況 ver 3.0.2

#player/skill/aqua_jet/main

#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
# ◆◇:水流弾:◇◆

## <呼び出し>
execute as @a[scores={SCORE_TIMER.aqua_jet.TIMER=0..}] at @s run spectate @e[tag=TOTEM_of_AQUA_JET,sort=nearest,limit=1] @s
execute as @a[scores={SCORE_TIMER.aqua_jet.TIMER=20..}] at @s run function cronica:player/skill/aqua_jet/active/complete

## <装飾>
#[パーティクル]
execute as @e[tag=MARKER_of_AQUA_JET] at @s run particle nautilus ~ ~ ~ 1 1 1 0 10 force

## <状態処理>
#[スコア増加]
scoreboard players add @a[scores={SCORE_TIMER.aqua_jet.TIMER=0..}] SCORE_TIMER.aqua_jet.TIMER 1

## <ループ処理>
execute if entity @a[scores={SCORE_TIMER.aqua_jet.TIMER=0..}] run schedule function cronica:player/skill/aqua_jet/main 1t
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■