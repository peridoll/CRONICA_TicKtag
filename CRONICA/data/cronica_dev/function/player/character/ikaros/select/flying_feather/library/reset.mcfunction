# =================================================================================================
#
# CRONICA - Ikaros - Flying Feather
#
# run
# |
# main
# └─ stop_ceiling
# └─ stop_stun
# └─ flaping
# └─ finish
#   └─ reset
# |
# ct
#
# =================================================================================================

##【 起動処理 】

  # スコア管理
    scoreboard players reset @s SCORE.cronica_dev.TIMER.flying_feather.ActivateTime
    execute unless entity @a[scores = {SCORE.cronica_dev.TIMER.flying_feather.ActivateTime = 0..}] run \
      scoreboard objectives remove SCORE.cronica_dev.TIMER.flying_feather.ActivateTime
# =================================================================================================
# ver 0.10.3
