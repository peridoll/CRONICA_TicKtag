## セットアップ

# タグ消し
execute unless score @s SCORE.cronica.PersonalNumber matches 0.. run function cronica:system/tag/reset/character
execute unless score @s SCORE.cronica.PersonalNumber matches 0.. run function cronica:system/tag/reset/skill

# パーソナルナンバー
function cronica:system/scoreboard/personal_number/registration

## CRONICA:セットアップ

# 開発者タグ消去
execute as @s run tag @s remove dev

# メインロビー集合
execute as @s run tag @s add TAG.cronica.SYSTEM.JoinServer.JoinWorld
execute as @s run function cronica:stage/teleport/main_lobby