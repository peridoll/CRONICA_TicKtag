# =================================================================================================

##【 IMPULSE 】

  ## スコアボード管理

    # スコア作成
      scoreboard objectives add SCORE.cronica.SYSTEM.PersonalNumber dummy
      scoreboard players set @s SCORE.cronica.SYSTEM.PersonalNumber -1

    # VIPナンバー取得
      function cronica:system/data/scoreboard/personal_number/vip_registration

    # 通常ナンバー取得
      execute unless score @s SCORE.cronica.SYSTEM.PersonalNumber matches 0.. run \
        function cronica:system/data/scoreboard/personal_number/normal_registration
# =================================================================================================
# ver 0.13.0
