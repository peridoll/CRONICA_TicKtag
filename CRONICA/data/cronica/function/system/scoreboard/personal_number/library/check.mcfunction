## 準備

# スコア設置
scoreboard objectives add SCORE.cronica.PersonalNumber.check.Temporary dummy "cronica:個人番号:設定用仮番号"
scoreboard players add @s SCORE.cronica.PersonalNumber.check.Temporary 1

# タグ設置
tag @s add TAG.cronica.PersonalNumber.check.Owner

## 実行

# 仮スコア判定
execute as @s at @s as @a[scores={SCORE.cronica.PersonalNumber=0..}] if score @s SCORE.cronica.PersonalNumber = @p[tag=TAG.cronica.PersonalNumber.check.Owner] SCORE.cronica.PersonalNumber.check.Temporary run tag @s add TAG.cronica.PersonalNumber.check.Skipper

# スコア確定
execute unless entity @a[tag=TAG.cronica.PersonalNumber.check.Skipper] run scoreboard players operation @s SCORE.cronica.PersonalNumber = @s SCORE.cronica.PersonalNumber.check.Temporary
execute unless entity @a[tag=TAG.cronica.PersonalNumber.check.Skipper] run scoreboard objectives remove SCORE.cronica.PersonalNumber.check.Temporary

## 撤去

# タグ管理
tag @s remove TAG.cronica.PersonalNumber.check.Owner
tag @a[tag=TAG.cronica.PersonalNumber.check.Skipper] remove TAG.cronica.PersonalNumber.check.Skipper

# 再起
execute unless score @s SCORE.cronica.PersonalNumber matches 0.. run function cronica:system/scoreboard/personal_number/library/check