# =================================================================================================

# アイテム置き換え
$scoreboard players reset @s SCORE.cronica_dev.MODE.$(ItemID)
$function cronica_dev:player/character/$(MasterID)/$(MasterType)/$(ItemID)/get

# 装飾
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 2

# リセット
$function cronica_dev:player/status/common_lib/ct/reset {ItemID: "$(ItemID)"}
# =================================================================================================
