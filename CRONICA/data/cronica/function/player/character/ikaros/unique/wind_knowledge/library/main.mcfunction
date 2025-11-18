# =================================================================================================

##【 REPEAT 】

  ## データ管理

    # スコア増加
      scoreboard players add @a[scores = {SCORE.cronica.TIMER.wind_knowledge.ActivateTime = 0.. }] SCORE.cronica.TIMER.wind_knowledge.ActivateTime 1

  ## 特定関数呼び出し

    # 中断処理
      execute as @a[scores = {SCORE.cronica.TIMER.wind_knowledge.ActivateTime = 0.. }, tag = TAG.cronica.STUNNING] run \
        function cronica:player/character/ikaros/unique/wind_knowledge/library/finish

    # アイテム使用停止
      execute as @a[scores = {SCORE.cronica.TIMER.wind_knowledge.ActivateTime = 0.. }, tag =! TAG.cronica.STATUS.ItemUsing] run \
        function cronica:player/character/ikaros/unique/wind_knowledge/library/finish

    # 実行終了
    execute \
        as @a[scores = {SCORE.cronica.TIMER.wind_knowledge.ActivateTime = 0.. }] \
        if score @s SCORE.cronica.TIMER.wind_knowledge.ActivateTime >= @s SCORE.cronica.TIMER.wind_knowledge.Activate.Goal \
      run \
        function cronica:player/character/ikaros/unique/wind_knowledge/library/finish

  ## 再起処理

    # ループ呼び出し
    execute if entity @a[scores = {SCORE.cronica.TIMER.wind_knowledge.ActivateTime = 0.. }] run \
      schedule function cronica:player/character/ikaros/unique/wind_knowledge/library/main 1t
# =================================================================================================
# ver 0.12.0
