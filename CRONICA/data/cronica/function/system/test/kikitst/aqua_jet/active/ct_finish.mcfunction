#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
#◆◇◆◇◆水流弾:クールタイム:終了◆◇◆◇◆

#-=active実行=-

#更新状況 ver 3.0.2

#player/skill/aqua_jet/active/ct_finish

#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
# ◆◇:フィニッシュ:◇◆

## <発動処理>
execute as @s run scoreboard players set @s SCORE_MODE.aqua_jet 0
execute as @s run function cronica:player/skill/aqua_jet/give

## <装飾>
execute as @s at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 2

## <状態処理>
execute as @s run scoreboard players reset @s SCORE_TIMER.aqua_jet.ct.TIMER
execute unless entity @a[scores={SCORE_TIMER.aqua_jet.ct.TIMER=0..}] run scoreboard objectives remove SCORE_TIMER.aqua_jet.ct.TIMER
execute unless entity @a[scores={SCORE_TIMER.aqua_jet.ct.TIMER=0..}] run scoreboard objectives remove SCORE_TIMER.aqua_jet.ct.TICK
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■