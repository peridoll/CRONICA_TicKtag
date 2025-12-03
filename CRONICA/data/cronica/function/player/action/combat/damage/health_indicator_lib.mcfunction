# =================================================================================================

##【 IMPULSE 】

  ## 装飾

    # ログ通知
      $tellraw @s \
        [ \
          {"text" : "⚔ ", "color" : "gold"}, \
          {"selector" : "@e[tag = TAG.cronica.STATUS.GetDamage, limit = 1]", "bold" : true}, \
          {"text" : " ▶▶ ", "color" : "gray"}, \
          {"text" : "DAMAGE", "color" : "gold"}, \
          {"text" : " ▶▶ ", "color" : "gray"}, \
          {"text" : "$(HeartCount)", "color" : "red", "bold" : true}, \
          {"text" : "$(HeartNum)", "color" : "gray"}, \
          {"text" : "( ", "color" : "gray"}, \
          {"score" : {"name" : "@s", "objective" : "SCORE.cronica.STATUS.Combat.GetPoints"}, "color" : "green", "bold" : true}, \
          {"text" : "p", "color" : "green"}, \
          {"text" : " )", "color" : "gray"} \
        ]
# =================================================================================================
# ver 0.13.0
