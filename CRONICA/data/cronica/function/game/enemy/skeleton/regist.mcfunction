# =================================================================================================

##【 IMPULSE 】

  ## 登録

    scoreboard objectives add SCORE.cronica.ENEMY.Spawned dummy
    execute store result score @s SCORE.cronica.ENEMY.Spawned run random value 1..4

    execute if score @s SCORE.cronica.ENEMY.Spawned matches 1..3 run function cronica:game/enemy/skeleton/setup/bow
    execute if score @s SCORE.cronica.ENEMY.Spawned matches 4 run function cronica:game/enemy/skeleton/setup/melee

    scoreboard objectives remove SCORE.cronica.ENEMY.Spawned
# =================================================================================================
# ver 0.13.0
