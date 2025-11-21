# =================================================================================================

##【 REPEAT 】

  ## データ管理

    # スコア増加
      scoreboard players add @a[scores = {SCORE.cronica.SKILL.flying_feather_ex.ActivateTime = 0.. }] \
        SCORE.cronica.SKILL.flying_feather_ex.ActivateTime 1

  ## プレイヤー管理

    # エフェクト解除
      effect clear @a[scores = {SCORE.cronica.SKILL.flying_feather_ex.ActivateTime = 10 }] minecraft:levitation

  ## 関数呼び出し

    # 中断処理
      execute \
          as @a[scores = {SCORE.cronica.SKILL.flying_feather_ex.ActivateTime = 0..19 }] \
          at @s unless block ~ ~2.1 ~ #core:no_collision \
        run \
          function cronica:player/character/ikaros/select/flying_feather_ex/library/stop_ceiling
      execute as @a[scores = {SCORE.cronica.SKILL.flying_feather_ex.ActivateTime = 0.. }, tag = TAG.cronica.STUNNING] run \
        function cronica:player/character/ikaros/select/flying_feather_ex/library/stop_stun

    # 羽ばたきエフェクト処理
      execute as @a[scores = {SCORE.cronica.SKILL.flying_feather_ex.ActivateTime = 20 }] at @s run \
        function cronica:player/character/ikaros/select/flying_feather_ex/library/flaping
      execute as @a[scores = {SCORE.cronica.SKILL.flying_feather_ex.ActivateTime = 25 }] at @s run \
        function cronica:player/character/ikaros/select/flying_feather_ex/library/flaping
      execute as @a[scores = {SCORE.cronica.SKILL.flying_feather_ex.ActivateTime = 30 }] at @s run \
        function cronica:player/character/ikaros/select/flying_feather_ex/library/flaping

    # 完了処理
    execute as @a[scores = {SCORE.cronica.SKILL.flying_feather_ex.ActivateTime = 35.. }] at @s run \
      function cronica:player/character/ikaros/select/flying_feather_ex/library/finish

  ## 再起処理

    # ループ呼び出し
    execute if entity @a[scores = {SCORE.cronica.SKILL.flying_feather_ex.ActivateTime = 0.. }] run \
      schedule function cronica:player/character/ikaros/select/flying_feather_ex/library/main 1t
# =================================================================================================
# ver 0.12.0
