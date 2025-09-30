#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
#◆◇◆◇◆水流弾:クールタイム:進捗◆◇◆◇◆

#-=active実行=-

#更新状況 ver 3.0.2

#player/skill/aqua_jet/active/ct_progress

#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
# ◆◇:進捗:◇◆

## <発動処理>
execute as @s run scoreboard players add @s SCORE_MODE.aqua_jet 1
execute as @s run function cronica:player/skill/aqua_jet/give

## <状態処理>
execute as @s run scoreboard players reset @s SCORE_TIMER.aqua_jet.ct.TICK
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■