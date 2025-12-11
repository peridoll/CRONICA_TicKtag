# =================================================================================================

##【 TICK LIBRARY 】
# 手動実行不可, 毎時実行

  ## データ管理

    # スコア増加
      scoreboard players add @a[scores = {SCORE.cronica.SKILL.flying_feather.ActivateTime = 0.. }] \
        SCORE.cronica.SKILL.flying_feather.ActivateTime 1



  ## プレイヤー管理

    # エフェクト解除
      effect clear @a[scores = {SCORE.cronica.SKILL.flying_feather.ActivateTime = 10.. }] minecraft:levitation



  ## 関数呼び出し

    # 中断処理
      execute \
          as @a[scores = {SCORE.cronica.SKILL.flying_feather.ActivateTime = 0..19 }] \
          at @s unless block ~ ~2.1 ~ #cronica:no_collision \
        run \
          function cronica:player/character/ikaros/select/flying_feather/library/activate/stop_ceiling
      execute as @a[scores = {SCORE.cronica.SKILL.flying_feather.ActivateTime = 0.. }, tag = TAG.cronica.STUNNING] run \
        function cronica:player/character/ikaros/select/flying_feather/library/activate/stop_stunning

    # 羽ばたきエフェクト処理
      execute as @a[scores = {SCORE.cronica.SKILL.flying_feather.ActivateTime = 20 }] at @s run \
        function cronica:player/character/ikaros/select/flying_feather/library/activate/flaping
      execute as @a[scores = {SCORE.cronica.SKILL.flying_feather.ActivateTime = 25 }] at @s run \
        function cronica:player/character/ikaros/select/flying_feather/library/activate/flaping
      execute as @a[scores = {SCORE.cronica.SKILL.flying_feather.ActivateTime = 30 }] at @s run \
        function cronica:player/character/ikaros/select/flying_feather/library/activate/flaping

    # 完了処理
      execute as @a[scores = {SCORE.cronica.SKILL.flying_feather.ActivateTime = 35.. }] at @s run \
        function cronica:player/character/ikaros/select/flying_feather/library/activate/finish



  ## 再起処理

    # ループ呼び出し
      execute if entity @a[scores = {SCORE.cronica.SKILL.flying_feather.ActivateTime = 0.. }] run \
        schedule function cronica:player/character/ikaros/select/flying_feather/library/activate/main 1t
# =================================================================================================
# ver 0.13.0
