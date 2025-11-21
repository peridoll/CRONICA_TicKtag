# =================================================================================================

##【 REPEAT 】

  ## プレイヤー管理

    # エフェクト付与
      execute as @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0.. }] run effect give @s minecraft:slow_falling infinite 0 true

  ## データ管理

    # スコア増加
      scoreboard objectives add SCORE.cronica.SKILL.flying_feather.ActivateTime dummy
      execute \
          as @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0.. }] \
          unless score @s SCORE.cronica.SKILL.flying_feather.ActivateTime matches 1.. \
        run \
          scoreboard players add @s SCORE.cronica.SKILL.wind_knowledge.ActivateTime 1
      execute unless entity @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0.. }] run \
        scoreboard objectives remove SCORE.cronica.SKILL.flying_feather.ActivateTime

    # CT固定
      scoreboard players set @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0.. }] SCORE.cronica.CHARACTER.wind_knowledge.CoolTime -1
      scoreboard players set @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0.. }] SCORE.cronica.CHARACTER.wind_knowledge.CoolTime.Stack -1

  ## 特定関数呼び出し

    # 中断処理
      execute as @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0.. }] if predicate core:is_on_ground run \
        function cronica:player/character/ikaros/unique/wind_knowledge/library/stop
      execute as @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0.. }, tag = TAG.cronica.STUNNING] run \
        function cronica:player/character/ikaros/unique/wind_knowledge/library/stop
      execute as @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0.. }, tag =! TAG.cronica.STATUS.ItemUsing] run \
        function cronica:player/character/ikaros/unique/wind_knowledge/library/stop

    # 実行終了
      execute \
          as @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0.. }] \
          if score @s SCORE.cronica.SKILL.wind_knowledge.ActivateTime >= @s SCORE.cronica.CHARACTER.wind_knowledge.Activate.Goal \
        run \
          function cronica:player/character/ikaros/unique/wind_knowledge/library/stop

    # 実行終了
      execute \
          as @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0.. }] \
          if predicate core:is_on_ground \
        run \
          function cronica:player/character/ikaros/unique/wind_knowledge/library/finish

  ## 再起処理

    # ループ呼び出し
      execute if entity @a[scores = {SCORE.cronica.SKILL.wind_knowledge.ActivateTime = 0.. }] run \
        schedule function cronica:player/character/ikaros/unique/wind_knowledge/library/main 1t
# =================================================================================================
# ver 0.12.0
