#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
#◆◇◆◇◆水流弾:クールタイム:メイン◆◇◆◇◆

#-=loop実行=-

#更新状況 ver 3.0.2

#player/skill/aqua_jet/active/ct_main

#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
# ◆◇:メイン:◇◆

## <呼び出し>
#[武器耐久値増加]
execute as @a[scores={SCORE_TIMER.aqua_jet.ct.TIMER=0..}] if score @s SCORE_TIMER.aqua_jet.ct.TICK >= #aqua_jet:CT:スタック目標値 SCORE run function cronica:player/skill/aqua_jet/active/ct_progress
#[チャージ完了]
execute as @a[scores={SCORE_TIMER.aqua_jet.ct.TIMER=0..}] if score @s SCORE_TIMER.aqua_jet.ct.TIMER >= #aqua_jet:CT CONFIG run function cronica:player/skill/aqua_jet/active/ct_finish

## <状態処理>
scoreboard players add @a[scores={SCORE_TIMER.aqua_jet.ct.TIMER=0..},tag=CRONICA_PLAYER] SCORE_TIMER.aqua_jet.ct.TIMER 1
scoreboard players add @a[scores={SCORE_TIMER.aqua_jet.ct.TIMER=0..},tag=CRONICA_PLAYER] SCORE_TIMER.aqua_jet.ct.TICK 1

## <ループ処理>
execute if entity @a[scores={SCORE_TIMER.aqua_jet.ct.TIMER=0..}] run schedule function cronica:player/skill/aqua_jet/active/ct_main 1t
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■