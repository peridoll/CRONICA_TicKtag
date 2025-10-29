# =================================================================================================

##【 REPEAT 】

  ## データ関連管理

    # スコアボード設置
      scoreboard objectives add SCORE.cronica.SYSTEM.PersonalNumber.Registration dummy
      scoreboard players add @s SCORE.cronica.SYSTEM.PersonalNumber.Registration 1

    # タグ設置
      tag @s add TAG.cronica.SYSTEM.PersonalNumber.Registration.Owner

  ## 対象番号確定

    # 仮スコア判定
      execute \
          at @s \
          as @a[scores = {SCORE.cronica.SYSTEM.PersonalNumber = 0..}] \
          if score @s SCORE.cronica.SYSTEM.PersonalNumber = @p[tag = TAG.cronica.SYSTEM.PersonalNumber.Registration.Owner] SCORE.cronica.SYSTEM.PersonalNumber.Registration \
        run \
          tag @s add TAG.cronica.SYSTEM.PersonalNumber.Registration.Skipper

    # スコア確定
      execute unless entity @a[tag = TAG.cronica.SYSTEM.PersonalNumber.Registration.Skipper] run \
        scoreboard players operation @s SCORE.cronica.SYSTEM.PersonalNumber = @s SCORE.cronica.SYSTEM.PersonalNumber.Registration

##【 REFLESH 】

  ## データ関連管理

    # スコア撤去
      execute unless entity @a[tag = TAG.cronica.SYSTEM.PersonalNumber.Registration.Skipper] run \
        scoreboard objectives remove SCORE.cronica.SYSTEM.PersonalNumber.Registration

    # タグ撤去
      tag @s remove TAG.cronica.SYSTEM.PersonalNumber.Registration.Owner
      tag @a[tag = TAG.cronica.SYSTEM.PersonalNumber.Registration.Skipper] remove TAG.cronica.SYSTEM.PersonalNumber.Registration.Skipper

  ## 再起実行管理

    # 再起処理
      execute unless score @s SCORE.cronica.SYSTEM.PersonalNumber matches 0.. run function cronica:system/data/scoreboard/personal_number/normal_registration
# =================================================================================================
# ver 0.11.0
