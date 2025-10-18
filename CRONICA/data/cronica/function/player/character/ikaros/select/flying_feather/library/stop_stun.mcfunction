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
    execute at @s run tp @s ~ ~ ~
    effect clear @s minecraft:levitation

  # スコア管理
    function cronica:player/character/ikaros/select/flying_feather/library/finish
# =================================================================================================
# ver 0.10.3
