#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
#◆◇◆◇◆水流弾:完了◆◇◆◇◆

#-=active実行=-

#更新状況 ver 3.0.2

#player/skill/aqua_jet/active/complete

#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
# ◆◇:チェック:◇◆

## <発動処理>
#[ゲームモード]
gamemode adventure @s
#[テレポート]
execute at @s run kill @e[tag=TOTEM_of_AQUA_JET,sort=nearest,limit=1]
execute at @s as @e[tag=MARKER_of_AQUA_JET] if score @s SCORE_CONFIG.personal_number = @p[tag=CRONICA_PLAYER] SCORE_CONFIG.personal_number run tp @p[tag=CRONICA_PLAYER] @s
execute at @s as @e[tag=MARKER_of_AQUA_JET] if score @s SCORE_CONFIG.personal_number = @p[tag=CRONICA_PLAYER] SCORE_CONFIG.personal_number run kill @s
execute at @s run tp @s ^ ^ ^-1
execute at @s if block ~ ~ ~ air run tp @s ~ ~1 ~

## <装飾>
#[サウンド]
execute at @s run playsound ambient.underwater.exit player @a ~ ~ ~ 1 1

## <状態処理>
#[スコア管理]
execute as @s run scoreboard players reset @s SCORE_TIMER.aqua_jet.TIMER
execute unless entity @a[scores={SCORE_TIMER.aqua_jet.TIMER=0..}] run scoreboard objectives remove SCORE_TIMER.aqua_jet.TIMER
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■