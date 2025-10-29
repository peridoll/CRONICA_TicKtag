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

  # エフェクト
    effect clear @s minecraft:levitation

  # スコア管理
    scoreboard players set @s SCORE.cronica_dev.TIMER.flying_feather.ActivateTime 19
# =================================================================================================
# ver 0.10.3
