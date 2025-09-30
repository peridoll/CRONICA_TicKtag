#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
#◆◇◆◇◆水流弾:チェック◆◇◆◇◆

#-=active実行=-

#更新状況 ver 3.0.2

#player/skill/aqua_jet/active/check

#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
# ◆◇:チェック:◇◆

## <発動処理>
#[スコア増加]
scoreboard players add @s SCORE_DATA.aqua_jet.STACK 1
#[限界距離]
execute as @s[scores={SCORE_DATA.aqua_jet.STACK=41}] run summon marker ~ ~1 ~ {Tags:[MARKER_of_AQUA_JET,MARKER_of_AQUA_JET_empty]}
execute as @s[scores={SCORE_DATA.aqua_jet.STACK=41}] run tp @e[tag=MARKER_of_AQUA_JET_empty,sort=nearest,limit=1] ~ ~1 ~ ~ ~
execute as @s[scores={SCORE_DATA.aqua_jet.STACK=41}] run scoreboard players operation @e[tag=MARKER_of_AQUA_JET_empty,sort=nearest,limit=1] SCORE_CONFIG.personal_number = @s SCORE_CONFIG.personal_number
execute as @s[scores={SCORE_DATA.aqua_jet.STACK=41}] run function cronica:player/skill/aqua_jet/active/standby
#[衝突]
execute as @s[scores={SCORE_DATA.aqua_jet.STACK=..40}] unless block ~ ~ ~ air run summon marker ~ ~1 ~ {Tags:[MARKER_of_AQUA_JET,MARKER_of_AQUA_JET_empty]}
execute as @s[scores={SCORE_DATA.aqua_jet.STACK=..40}] unless block ~ ~ ~ air run tp @e[tag=MARKER_of_AQUA_JET_empty,sort=nearest,limit=1] ~ ~1 ~ ~ ~
execute as @s[scores={SCORE_DATA.aqua_jet.STACK=..40}] unless block ~ ~ ~ air run scoreboard players operation @e[tag=MARKER_of_AQUA_JET_empty,sort=nearest,limit=1] SCORE_CONFIG.personal_number = @s SCORE_CONFIG.personal_number
execute as @s[scores={SCORE_DATA.aqua_jet.STACK=..40}] unless block ~ ~ ~ air run function cronica:player/skill/aqua_jet/active/standby
#[攻撃HIT]
execute positioned ~ ~-1 ~ run tag @a[tag=CRONICA_PLAYER,gamemode=!spectator,distance=..3] add TAG.aqua_jet.HIT

## <装飾>
#[パーティクル]
particle sonic_boom ~ ~ ~ 0 0 0 1 1 force
particle falling_water ~ ~ ~ 1 1 1 0 10 force
particle fishing ~ ~ ~ 1 1 1 0 10 force

## <再起処理>
execute as @s[scores={SCORE_DATA.aqua_jet.STACK=..40}] if block ~ ~ ~ air positioned ^ ^ ^0.5 run function cronica:player/skill/aqua_jet/active/check
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■