#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
#◆◇◆◇◆水流弾:スタート◆◇◆◇◆

#-=active実行=-

#更新状況 ver 3.0.2

#player/skill/aqua_jet/run

#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
# ◆◇:水流弾:◇◆

## <発動処理>
#[アイテム置き換え]
scoreboard players set @s SCORE_MODE.aqua_jet 101
function cronica:player/skill/aqua_jet/give
#[ゲームモード]
gamemode spectator @s
#[トーテム召喚]
execute at @s run summon armor_stand ~ ~1 ~ {Marker:true,Invisible:true,Tags:[TOTEM_of_AQUA_JET,TOTEM_of_AQUA_JET.empty]}
execute at @s run tp @e[tag=TOTEM_of_AQUA_JET,sort=nearest,limit=1] ~ ~1 ~ ~ ~
execute at @s run spectate @e[tag=TOTEM_of_AQUA_JET.empty,sort=nearest,limit=1] @s
tag @e[tag=TOTEM_of_AQUA_JET.empty] remove TOTEM_of_AQUA_JET.empty

## <装飾>
#[パーティクル]
execute at @s run particle minecraft:firework ~ ~1.5 ~ 0.5 0.5 0.5 1 20 force
#[サウンド再生]
execute at @s run playsound ambient.underwater.enter player @a ~ ~ ~ 1 1


## <状態処理>
#[メイン:スタック用意]
scoreboard objectives add SCORE_DATA.aqua_jet.STACK dummy "水流弾:スタック"
scoreboard players set @s SCORE_DATA.aqua_jet.STACK 0
#[メイン:タイマー用意]
scoreboard objectives add SCORE_TIMER.aqua_jet.TIMER dummy "水流弾:タイマー"
scoreboard players set @s SCORE_TIMER.aqua_jet.TIMER 0
#[クールタイム:タイマー用意]
scoreboard objectives add SCORE_TIMER.aqua_jet.ct.TIMER dummy "水流弾:CT:合計値"
scoreboard objectives add SCORE_TIMER.aqua_jet.ct.TICK dummy "水流弾:CT:現在値"
scoreboard players set @s SCORE_TIMER.aqua_jet.ct.TIMER 0
scoreboard players set #10 SCORE 10
scoreboard players operation #aqua_jet:CT:スタック目標値 SCORE = #aqua_jet:CT CONFIG
scoreboard players operation #aqua_jet:CT:スタック目標値 SCORE /= #10 SCORE

## <ループ処理>
execute at @s positioned ~ ~1 ~ run function cronica:player/skill/aqua_jet/active/check
schedule function cronica:player/skill/aqua_jet/main 1t
schedule function cronica:player/skill/aqua_jet/active/ct_main 1t
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■