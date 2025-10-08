# =================================================================================================

## Special Move Tick Function

# Wall Climb
execute as @a[tag=TAG.cronica.GAMING,tag=TAG.cronica.DETECT.IsSneaking] at @s rotated ~ 0 if block ~ ~ ~ #cronica:fence if block ~ ~1 ~ #cronica:no_collision run function cronica:world/gimmick/special_move/wall_climb/charge
execute as @a[scores={SCORE.cronica.GIMMICK.wall_climb.Charging=1..}] run function cronica:world/gimmick/special_move/wall_climb/main
# =================================================================================================
