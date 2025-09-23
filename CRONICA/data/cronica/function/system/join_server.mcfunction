
##【 サーバー参加時処理 】
# サーバーに参加した際に実行しておく処理をまとめたもの

#【 スキルリセット 】
# 本日中にサーバー参加記録がない場合、選択中のキャラクターとスキルをリセットする
execute unless score @s SCORE.cronica.PersonalNumber matches 0.. run function cronica:system/tag/reset/character
execute unless score @s SCORE.cronica.PersonalNumber matches 0.. run function cronica:system/tag/reset/skill

#【 スコアセットアップ 】
# パーソナルナンバーの登録
# パーソナルナンバー : サーバーに参加しているプレイヤーに割り振られる一意の番号
function cronica:system/scoreboard/personal_number/registration

#【 スタートポジション指定 】
# メインロビーへテレポート
tag @s add TAG.cronica.SYSTEM.JoinServer.JoinWorld
function cronica:stage/teleport/main_lobby
