# =================================================================================================

# 共通処理
function cronica:player/status/skill_library/run_common {MasterID: "ikaros", MasterType: "select", ItemID: "flying_feather"}

# ゲームモード
tag @s[gamemode=creative] add TAG.cronica.SKILL.flying_feather.RunCreative
gamemode adventure @s[tag=TAG.cronica.SKILL.flying_feather.RunCreative]

# エフェクト
effect give @s minecraft:levitation 1 25 true
effect give @s minecraft:slow_falling infinite 0 true

# ゲームモード
gamemode creative @s[tag=TAG.cronica.SKILL.flying_feather.RunCreative]
tag @s[tag=TAG.cronica.SKILL.flying_feather.RunCreative] remove TAG.cronica.SKILL.flying_feather.RunCreative

# 装飾
particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.1 50 force
playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 2 1
playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 2 1
# =================================================================================================
