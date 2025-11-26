# =================================================================================================

##【 REPEAT 】

  ## データ管理

    # スコア増加
      # scoreboard players add @a[scores = {SCORE.cronica.CHARACTER.judgment_stone.ActivateTime = 0.. }] SCORE.cronica.CHARACTER.judgment_stone.ActivateTime 1

  ## プレイヤー管理

    # エフェクト解除
      # effect clear @a[scores = {SCORE.cronica.CHARACTER.judgment_stone.ActivateTime = 10 }] minecraft:levitation

  ## 特定関数呼び出し

    # 中断処理
      # execute as @a[scores = {SCORE.cronica.CHARACTER.judgment_stone.ActivateTime = 0..19 }] at @s unless block ~ ~2.1 ~ #core:no_collision run \
        function cronica:player/character/ikaros/select/judgment_stone/library/stop_ceiling
      # execute as @a[scores = {SCORE.cronica.CHARACTER.judgment_stone.ActivateTime = 0.. }, tag = TAG.cronica.STUNNING] run \
        function cronica:player/character/ikaros/select/judgment_stone/library/stop_stun

  ## 装飾

    # 実行終了
    # execute as @a[scores = {SCORE.cronica.CHARACTER.judgment_stone.ActivateTime = 30.. }] at @s run \
      function cronica:player/character/ikaros/select/judgment_stone/library/finish

  ## 再起処理

    # ループ呼び出し
    # execute if entity @a[scores = {SCORE.cronica.CHARACTER.judgment_stone.ActivateTime = 0.. }] run \
      schedule function cronica:player/character/ikaros/select/judgment_stone/library/main 1t
# =================================================================================================
# ver 0.12.0
