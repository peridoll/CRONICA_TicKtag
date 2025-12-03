# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理

      # 体力
        scoreboard objectives add SCORE.cronica.STATUS.Combat.AttackDamage dummy
        scoreboard players operation @s SCORE.cronica.STATUS.Combat.AttackDamage = @e[tag = TAG.cronica.STATUS.GetDamage, limit = 1] SCORE.cronica.STATUS.Combat.Health.Change

      # 表示ハート数
        scoreboard objectives add SCORE.cronica.STATUS.Combat.HeartCount dummy
        scoreboard players operation @s SCORE.cronica.STATUS.Combat.HeartCount = @s SCORE.cronica.STATUS.Combat.AttackDamage
        scoreboard players operation @s SCORE.cronica.STATUS.Combat.HeartCount /= #2 SCORE.cronica.CONFIG
        execute if score @s SCORE.cronica.STATUS.Combat.HeartCount matches 0 run \
          scoreboard players set @s SCORE.cronica.STATUS.Combat.HeartCount 1

      # 獲得ポイント
        scoreboard objectives add SCORE.cronica.STATUS.Combat.GetPoints dummy
        scoreboard objectives add SCORE.cronica.STATUS.Combat.GetPoints_225 dummy
        scoreboard players set @s SCORE.cronica.STATUS.Combat.GetPoints_225 225
        scoreboard players operation @s SCORE.cronica.STATUS.Combat.GetPoints = @s SCORE.cronica.STATUS.Combat.AttackDamage
        scoreboard players operation @s SCORE.cronica.STATUS.Combat.GetPoints *= @s SCORE.cronica.STATUS.Combat.GetPoints_225
        scoreboard players operation @s SCORE.cronica.STATUS.Combat.GetPoints /= #100 SCORE.cronica.CONFIG

  ## 装飾

    # ログ通知
      tellraw @s \
        [ \
          {"selector" : "@e[tag = TAG.cronica.STATUS.GetDamage, limit = 1]", "bold" : true}, \
          {"text" : " ▶ ", "color" : "gray"}, \
          {"text" : "♥", "color" : "red"}, \
          {"text" : "x", "color" : "gray"}, \
          {"score" : {"name" : "@s", "objective" : "SCORE.cronica.STATUS.Combat.HeartCount"}, "color" : "gray"}, \
          {"text" : "(", "color" : "gray"}, \
          {"score" : {"name" : "@s", "objective" : "SCORE.cronica.STATUS.Combat.GetPoints"}, "color" : "green"}, \
          {"text" : "p", "color" : "green"}, \
          {"text" : ")", "color" : "gray"} \
        ]
# =================================================================================================
# ver 0.13.0
