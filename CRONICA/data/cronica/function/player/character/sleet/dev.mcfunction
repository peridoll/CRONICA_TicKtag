# =================================================================================================

# スコアボード初期化
execute unless score #Angle45 SCORE.cronica.CONFIG matches 1.. run scoreboard objectives add SCORE.cronica.CALC.test_item.Angle45 dummy
execute unless score #Angle45 SCORE.cronica.CONFIG matches 1.. run scoreboard players set #Angle45 SCORE.cronica.CONFIG 1
execute unless score #IceWall SCORE.cronica.CONFIG matches 1.. run scoreboard objectives add SCORE.cronica.TIMER.test_item.IceWall dummy
execute unless score #IceWall SCORE.cronica.CONFIG matches 1.. run scoreboard players set #IceWall SCORE.cronica.CONFIG 1

# =================================================================================================
