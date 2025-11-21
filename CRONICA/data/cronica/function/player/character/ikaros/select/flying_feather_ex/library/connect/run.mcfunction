# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理
      scoreboard objectives add SCORE.cronica.CHARACTER.flying_feather_ex.Connect.Activate dummy
      scoreboard players set @s SCORE.cronica.CHARACTER.flying_feather_ex.Connect.Activate 0

  ## 関数呼び出し

    # メイン処理
      execute unless entity @a[scores = {SCORE.cronica.CHARACTER.flying_feather_ex.Connect.Activate = 1..}] run \
        function cronica:player/character/ikaros/select/flying_feather_ex/library/connect/main
# =================================================================================================
# ver 0.12.0
