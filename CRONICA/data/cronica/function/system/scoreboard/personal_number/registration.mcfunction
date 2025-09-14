# スコア設置
scoreboard objectives add SCORE.cronica.PersonalNumber dummy "cronica:個人番号"
scoreboard players set @s SCORE.cronica.PersonalNumber -1

# VIPナンバー指定
function cronica:system/scoreboard/personal_number/library/vip_get

# ナンバー取得
execute unless score @s SCORE.cronica.PersonalNumber matches 0.. run function cronica:system/scoreboard/personal_number/library/check