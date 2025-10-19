# =================================================================================================

##【 REPEAT 】

  ## スコア管理

    # スコア設置
      scoreboard objectives add SCORE.cronica.STATUS.SkillReset dummy
      scoreboard players add @s SCORE.cronica.STATUS.SkillReset 0

    # スコアをストレージに保存
      execute store result storage cronica:temp SkillReset.Slot int 1 run scoreboard players get @s SCORE.cronica.STATUS.SkillReset

    # 探索と保存
      function cronica:player/status/common_lib/reset/main with storage cronica:temp SkillReset

    # 探索終了
      execute if score @s SCORE.cronica.STATUS.SkillReset matches 36.. run scoreboard players reset @s SCORE.cronica.STATUS.SkillReset
      execute unless entity @a[scores = {SCORE.cronica.STATUS.SkillReset = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.SkillReset

    # 次のスロットへ
      execute if score @s SCORE.cronica.STATUS.SkillReset matches 0..35 run scoreboard players add @s SCORE.cronica.STATUS.SkillReset 1
      execute if score @s SCORE.cronica.STATUS.SkillReset matches 0..35 run function cronica:player/status/common_lib/reset/main
# =================================================================================================
# ver 0.10.3
