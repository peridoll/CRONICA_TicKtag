# =================================================================================================

# スコア設置
scoreboard objectives add SCORE.cronica.PersonalNumber.registration.Temp dummy
scoreboard players add @s SCORE.cronica.PersonalNumber.registration.Temp 1

# タグ設置
tag @s add TAG.cronica.PersonalNumber.registration.Owner

# 仮スコア判定
execute as @s at @s as @a[scores={SCORE.cronica.PersonalNumber=0..}] if score @s SCORE.cronica.PersonalNumber = @p[tag=TAG.cronica.PersonalNumber.registration.Owner] SCORE.cronica.PersonalNumber.registration.Temp run tag @s add TAG.cronica.PersonalNumber.registration.Skipper

# スコア確定
execute unless entity @a[tag=TAG.cronica.PersonalNumber.registration.Skipper] run scoreboard players operation @s SCORE.cronica.PersonalNumber = @s SCORE.cronica.PersonalNumber.registration.Temp
execute unless entity @a[tag=TAG.cronica.PersonalNumber.registration.Skipper] run scoreboard objectives remove SCORE.cronica.PersonalNumber.registration.Temp

# タグ管理
tag @s remove TAG.cronica.PersonalNumber.registration.Owner
tag @a[tag=TAG.cronica.PersonalNumber.registration.Skipper] remove TAG.cronica.PersonalNumber.registration.Skipper

# 再起処理
execute unless score @s SCORE.cronica.PersonalNumber matches 0.. run function cronica:system/preparation/scoreboard/personal_number/main_lib
# =================================================================================================
