# =================================================================================================

##【 REPEAT 】

  ## データ管理

    # スコア管理
      scoreboard players add @a[scores = {SCORE.cronica.CHARACTER.flying_feather.Connect.Activate = 0..}] SCORE.cronica.CHARACTER.flying_feather.Connect.Activate 1

  ## プレイヤー管理

    # エフェクト付与
      effect give @a[scores = {SCORE.cronica.CHARACTER.flying_feather.Connect.Activate = 0..}] resistance infinite 1 true

  ## 関数呼び出し

    # 終了処理
      execute \
          as @a[scores = {SCORE.cronica.CHARACTER.flying_feather.Connect.Activate = 0..}] \
          if predicate core:is_on_ground \
        run \
          function cronica:player/character/ikaros/select/flying_feather/library/connect/finish

    # 再起処理
      execute if entity @a[scores = {SCORE.cronica.CHARACTER.flying_feather.Connect.Activate = 0..}] run \
        schedule function cronica:player/character/ikaros/select/flying_feather/library/connect/main 1t
# =================================================================================================
# ver 0.12.0
