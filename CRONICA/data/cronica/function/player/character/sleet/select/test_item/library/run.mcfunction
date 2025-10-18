# =================================================================================================

##縲・蜈ｱ騾壼・逅・縲・

## 繧ｭ繝｣繝ｩ繧ｯ繧ｿ繝ｼ髢｢騾｣縺ｮ蜈ｱ騾壼・逅・ｒ螳溯｡・
# MasterID   : brave        / ikaros         / など
# MasterType : unique       / select         / など
# ItemID     : master_sword / flying_feather / など

# 謇謖√い繧､繝・Β鄂ｮ縺肴鋤縺医√せ繧ｳ繧｢繝懊・繝我ｽ懈・縲√さ繝ｳ繝輔ぅ繧ｰ隱ｭ縺ｿ霎ｼ縺ｿ縲√Γ繧､繝ｳ蜃ｦ逅・他縺ｳ蜃ｺ縺励，T蜃ｦ逅・他縺ｳ蜃ｺ縺・縺ｪ縺ｩ繧貞ｮ溯｡・
function cronica:player/status/common_lib/character_run {MasterID: "sleet", MasterType: "select", ItemID: "test_item"}
# =================================================================================================

##縲・蝗ｺ譛牙・逅・縲・

## 襍ｷ蜍募柑譫・

# 繧ｹ繧ｳ繧｢險ｭ螳・
execute unless score #Angle45 SCORE.cronica.CONFIG matches 1.. run scoreboard objectives add SCORE.cronica.CALC.test_item.Angle45 dummy
execute unless score #Angle45 SCORE.cronica.CONFIG matches 1.. run scoreboard players set #Angle45 SCORE.cronica.CONFIG 1

# 繧ｨ繝輔ぉ繧ｯ繝・
effect give @s minecraft:levitation 1 25 true
effect give @s minecraft:slow_falling infinite 0 true

# 繧ｲ繝ｼ繝繝｢繝ｼ繝・
#gamemode creative @s[tag=TAG.cronica.SKILL.flying_feather.RunCreative]
#tag @s[tag=TAG.cronica.SKILL.flying_feather.RunCreative] remove TAG.cronica.SKILL.flying_feather.RunCreative

## 陬・｣ｾ

# 繝代・繝・ぅ繧ｯ繝ｫ
particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.1 50 force

# 繧ｵ繧ｦ繝ｳ繝・
playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 2 1
playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 2 1
# =================================================================================================
