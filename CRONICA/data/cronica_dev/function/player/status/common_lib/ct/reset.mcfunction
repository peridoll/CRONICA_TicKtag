# =================================================================================================

# スコア管理
  $scoreboard players reset @s SCORE.cronica_dev.MODE.$(ItemID)
  $execute unless entity @a[scores={SCORE.cronica_dev.MODE.$(ItemID)=-2..}] run scoreboard objectives remove SCORE.cronica_dev.MODE.$(ItemID)
  $scoreboard players reset @s SCORE.cronica_dev.TIMER.$(ItemID).CoolTime
  $execute unless entity @a[scores={SCORE.cronica_dev.TIMER.$(ItemID).CoolTime=0..}] run scoreboard objectives remove SCORE.cronica_dev.TIMER.$(ItemID).CoolTime
  $execute unless entity @a[scores={SCORE.cronica_dev.TIMER.$(ItemID).CoolTime=0..}] run scoreboard objectives remove SCORE.cronica_dev.TIMER.$(ItemID).CoolTime.Goal
  $execute unless entity @a[scores={SCORE.cronica_dev.TIMER.$(ItemID).CoolTime=0..}] run scoreboard objectives remove SCORE.cronica_dev.TIMER.$(ItemID).CoolTime.Stack
  $execute unless entity @a[scores={SCORE.cronica_dev.TIMER.$(ItemID).CoolTime=0..}] run scoreboard objectives remove SCORE.cronica_dev.TIMER.$(ItemID).CoolTime.Stack.Goal
# =================================================================================================
# ver 0.10.3
