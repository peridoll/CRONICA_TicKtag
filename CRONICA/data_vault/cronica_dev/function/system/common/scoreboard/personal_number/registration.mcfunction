# =================================================================================================
#
# CRONICA - Personal Number Registration
#
# registration
# └─ vip_registration
# └─ main (recursion)
#
# =================================================================================================

##【 起動処理 】

  # スコア初期化
    scoreboard objectives add SCORE.cronica_dev.PersonalNumber dummy
    scoreboard players set @s SCORE.cronica_dev.PersonalNumber -1

  # VIPナンバー取得
    function cronica_dev:system/common/scoreboard/personal_number/vip_registration

  # 通常ナンバー取得
    execute unless score @s SCORE.cronica_dev.PersonalNumber matches 0.. run function cronica_dev:system/common/scoreboard/personal_number/main
# =================================================================================================
# ver 0.10.3
