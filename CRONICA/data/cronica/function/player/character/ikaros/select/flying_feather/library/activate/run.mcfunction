# =================================================================================================

# say flying feather activated

tp @s ~ ~ ~

scoreboard objectives add SCORE.cronica.STATUS.MotionVector dummy
scoreboard players set $x SCORE.cronica.STATUS.MotionVector 0
scoreboard players set $y SCORE.cronica.STATUS.MotionVector 15000
scoreboard players set $z SCORE.cronica.STATUS.MotionVector 0
function #p_motion:xyz

# =================================================================================================
# ver 0.14.0
