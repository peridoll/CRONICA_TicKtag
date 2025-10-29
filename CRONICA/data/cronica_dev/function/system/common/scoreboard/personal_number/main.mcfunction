# =================================================================================================
#
# CRONICA - Personal Number Registration
#
# registration
# └─ vip_registration
# └─ main (recursion)
#
# =================================================================================================

##【 継続処理 】

  # スコア設置
    scoreboard objectives add SCORE.cronica_dev.STATUS.PersonalNumber.Registration dummy
    scoreboard players add @s SCORE.cronica_dev.STATUS.PersonalNumber.Registration 1

  # タグ設置
    tag @s add TAG.cronica_dev.STATUS.PersonalNumber.Registration.Owner

  # 仮スコア判定
    execute \
        at @s \
        as @a[scores = {SCORE.cronica_dev.PersonalNumber = 0..}] \
        if score @s SCORE.cronica_dev.PersonalNumber = @p[tag = TAG.cronica_dev.STATUS.PersonalNumber.Registration.Owner] SCORE.cronica_dev.STATUS.PersonalNumber.Registration \
      run \
        tag @s add TAG.cronica_dev.STATUS.PersonalNumber.Registration.Skipper

  # スコア確定
    execute unless entity @a[tag = TAG.cronica_dev.STATUS.PersonalNumber.Registration.Skipper] run \
      scoreboard players operation @s SCORE.cronica_dev.PersonalNumber = @s SCORE.cronica_dev.STATUS.PersonalNumber.Registration
    execute unless entity @a[tag = TAG.cronica_dev.STATUS.PersonalNumber.Registration.Skipper] run \
      scoreboard objectives remove SCORE.cronica_dev.STATUS.PersonalNumber.Registration

  # タグ管理
    tag @s remove TAG.cronica_dev.STATUS.PersonalNumber.Registration.Owner
    tag @a[tag = TAG.cronica_dev.STATUS.PersonalNumber.Registration.Skipper] remove TAG.cronica_dev.STATUS.PersonalNumber.Registration.Skipper

  # 再起処理
    execute unless score @s SCORE.cronica_dev.PersonalNumber matches 0.. run function cronica_dev:system/common/scoreboard/personal_number/main
# =================================================================================================
# ver 0.10.3
