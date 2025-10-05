# =================================================================================================

# スコア管理
scoreboard objectives add SCORE.cronica.PersonalNumber dummy
scoreboard players set @s SCORE.cronica.PersonalNumber -1

# VIPナンバー指定
function cronica:system/preparation/scoreboard/personal_number/vip_registration

# ナンバー取得
execute unless score @s SCORE.cronica.PersonalNumber matches 0.. run function cronica:system/preparation/scoreboard/personal_number/main_lib
# =================================================================================================
