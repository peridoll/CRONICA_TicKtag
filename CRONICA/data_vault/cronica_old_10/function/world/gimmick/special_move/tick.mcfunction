# =================================================================================================

## Special Move Tick Function

# Wall Climb
execute as @a[tag=TAG.cronica_dev.GAMING,tag=TAG.cronica_dev.STATUS.IsSneaking] at @s rotated ~ 0 if block ~ ~ ~ #cronica_dev:fence if block ~ ~1 ~ #cronica_dev:no_collision run function cronica_dev:world/gimmick/special_move/wall_climb/charge
execute as @a[scores={SCORE.cronica_dev.GIMMICK.wall_climb.Charging=1..}] run function cronica_dev:world/gimmick/special_move/wall_climb/main
# =================================================================================================
