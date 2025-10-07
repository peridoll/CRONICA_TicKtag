# =================================================================================================

# スコア管理
$scoreboard players reset @s SCORE.cronica.MODE.$(ItemID)
$execute unless entity @a[scores={SCORE.cronica.MODE.$(ItemID)=-2..}] run scoreboard objectives remove SCORE.cronica.MODE.$(ItemID)
$scoreboard players reset @s SCORE.cronica.TIMER.$(ItemID).CoolTime
$execute unless entity @a[scores={SCORE.cronica.TIMER.$(ItemID).CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.$(ItemID).CoolTime
$execute unless entity @a[scores={SCORE.cronica.TIMER.$(ItemID).CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal
$execute unless entity @a[scores={SCORE.cronica.TIMER.$(ItemID).CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack
$execute unless entity @a[scores={SCORE.cronica.TIMER.$(ItemID).CoolTime=0..}] run scoreboard objectives remove SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack.Goal
# =================================================================================================
