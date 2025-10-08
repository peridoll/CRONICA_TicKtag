# =================================================================================================

##【 共通処理 】

## キャラクター関連の共通処理を実行
# MasterID   : brave        / ikaros         / etc...
# MasterType : unique       / select         / etc...
# ItemID     : master_sword / flying_feather / etc...

# 所持アイテム置き換え、スコアボード作成、コンフィグ読み込み、メイン処理呼び出し、CT処理呼び出し などを実行
function cronica:player/status/common_lib/character_run {MasterID: "sleet", MasterType: "select", ItemID: "flying_feather"}
# =================================================================================================

##【 固有処理 】

## 起動効果

# ゲームモード
tag @s[gamemode=creative] add TAG.cronica.SKILL.flying_feather.RunCreative
gamemode adventure @s[tag=TAG.cronica.SKILL.flying_feather.RunCreative]

# エフェクト
effect give @s minecraft:levitation 1 25 true
effect give @s minecraft:slow_falling infinite 0 true

# ゲームモード
gamemode creative @s[tag=TAG.cronica.SKILL.flying_feather.RunCreative]
tag @s[tag=TAG.cronica.SKILL.flying_feather.RunCreative] remove TAG.cronica.SKILL.flying_feather.RunCreative

## 装飾

# パーティクル
particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.1 50 force

# サウンド
playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 2 1
playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 2 1
# =================================================================================================
